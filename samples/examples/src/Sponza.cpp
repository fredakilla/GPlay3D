#include "SamplesGame.h"
#include "renderer/BGFXRenderer.h"
#include "FirstPersonCamera.h"
#include <imgui/imgui.h>
#include <events/EventManager.h>
#include <core/FileWatcher.h>

/**
 * Sponza scene for rendering experiments.
 * Material reloading for all drawable nodes is performed when
 * detecting any changes in the shader directory (live shaders coding)
 */
class Sponza : public Example
{
    Scene* _scene;
    Font* _font;
    FirstPersonCamera _fpCamera;

    // ambient light color
    Vector3 _uAmbientColor;
    // array of directional light
    static const int MAX_DIR_LIGHTS = 1;
    Vector4 _uDirLightColor[MAX_DIR_LIGHTS];
    Vector4 _uDirLightDirection[MAX_DIR_LIGHTS];

public:

    // get methods that will be binded with material uniform

    const Vector3 getAmbientLightColor() const
    {
        return _uAmbientColor;
    }

    const Vector4* getDirectionalLightColor() const
    {
        return &_uDirLightColor[0];
    }

    const Vector4* getDirectionalLightDirection() const
    {
        return &_uDirLightDirection[0];
    }



    Sponza()
        : _font(nullptr)
        , _scene(nullptr)
    {
    }

    void finalize()
    {
        SAFE_RELEASE(_scene);
        SAFE_RELEASE(_font);
    }

    void initialize()
    {
        // Create the font for drawing the framerate.
        _font = Font::create("res/coredata/ui/arial.gpb");

        // Load sponza scene
        _scene = Scene::load("res/data/samples/examples/sponza/sponza.gpb");

        // Initialise materials for all models
        _scene->visit(this, &Sponza::initializeMaterials);

        // set fps camera
        _fpCamera.initialize(1.0, 100000.0f);
        _fpCamera.setPosition(Vector3(0,10,0));
        _fpCamera.rotate(MATH_DEG_TO_RAD(90.0f), 0.0f);
        _scene->addNode(_fpCamera.getRootNode());
        _scene->setActiveCamera(_fpCamera.getCamera());
        _scene->getActiveCamera()->setAspectRatio(getAspectRatio());

        // Add watcher to shader directory and bind event to be notified on changes
        FileWatcher::Get()->addDirectory("res/coredata/shaders", true);
        EventManager::get()->addListener(GP_EVENT_LISTENER(this, Sponza::onShaderDirectoryEvent), FileWatcherEvent::ID());
    }

    bool initializeMaterials(Node* node)
    {
        Model* model = dynamic_cast<Model*>(node->getDrawable());
        if (model)
        {
            Material* material = model->getMaterial(0);

            if(material)
            {
                //material->setParameterAutoBinding("u_inverseTransposeWorldViewMatrix", RenderState::INVERSE_TRANSPOSE_WORLD_VIEW_MATRIX);
                material->setParameterAutoBinding("u_inverseTransposeWorldViewMatrix", RenderState::INVERSE_TRANSPOSE_WORLD_MATRIX);

                // Bind material uniform to method
                material->getParameter("u_ambientColor")->bindValue(this, &Sponza::getAmbientLightColor);
                //material->getParameter("u_directionalLightColor")->bindValue(this, &Sponza::getDirectionalLightColor);
                //material->getParameter("u_directionalLightDirection")->bindValue(this, &Sponza::getDirectionalLightDirection);

            }
        }
        return true;
    }

    void onShaderDirectoryEvent(EventDataRef eventData)
    {
        auto watchFileEvent = std::dynamic_pointer_cast<FileWatcherEvent>(eventData);

        // if change on shader directory reload material for all scene nodes
        if(watchFileEvent)
            _scene->visit(this, &Sponza::reloadMaterials);
    }

    bool reloadMaterials(Node* node)
    {
        Model* model = dynamic_cast<Model*>(node->getDrawable());
        if (model)
        {
            Material* material = model->getMaterial(0);
            material->reload();
        }
        return true;
    }

    void update(float elapsedTime)
    {
        // update camera
        _fpCamera.updateCamera(elapsedTime);

        // Create some ImGui controls
        static float ambient[3] = { 0.2f, 0.2f, 0.2f };
        static float direction[3] = { 0.25f, -1.0f, 0.25f };
        static float color[3] = { 0.75f, 0.75f, 0.75f };
        ImGui::SetNextWindowSize(ImVec2(200,200), ImGuiCond_FirstUseEver);
        ImGui::Begin("Light control");
        ImGui::SliderFloat3("Ambient", ambient, 0.0f, 1.0f);
        ImGui::Text("Directionnal Light 1");
        ImGui::SliderFloat3("Direction", direction, -1.0f, 1.0f);
        ImGui::SliderFloat3("Color", color, 0.0f, 1.0f);
        ImGui::End();

        // update uniform values
        _uDirLightColor[0].set(color);
        _uDirLightDirection[0].set(direction);
        _uAmbientColor.set(ambient);
    }

    void render(float elapsedTime)
    {
        _scene->visit(this, &Sponza::drawScene);
        drawFrameRate(_font, Vector4(0, 0.5f, 1, 1), 5, 1, getFrameRate());
    }

    bool drawScene(Node* node)
    {
        Drawable* drawable = node->getDrawable();
        if (drawable)
        {
            // apply material uniform
            Model* model = dynamic_cast<Model*>(drawable);
            if (model)
            {
                Material* material = model->getMaterial(0);
                material->getParameter("u_directionalLightColor")->setValue(getDirectionalLightColor(), MAX_DIR_LIGHTS);
                material->getParameter("u_directionalLightDirection")->setValue(getDirectionalLightDirection(), MAX_DIR_LIGHTS);
            }

            drawable->draw();
        }
        return true;
    }

    void touchEvent(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex)
    {
        _fpCamera.touchEvent(evt, x, y, contactIndex);
    }

    void keyEvent(Keyboard::KeyEvent evt, int key)
    {
        _fpCamera.keyEvent(evt, key);
    }

};


#if defined(ADD_SAMPLE)
ADD_SAMPLE("Graphics", "Sponza", Sponza, 4)
#endif

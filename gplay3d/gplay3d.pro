#--------------------------------------------------------------------
# output directory
#--------------------------------------------------------------------

CONFIG(debug,debug|release){
    DESTDIR = $$PWD/../BUILD
} else {
    DESTDIR = $$PWD/../BUILD
}

QMAKE_CLEAN += $$DESTDIR/$$TARGET

#-------------------------------------------------
#
# Project created by QtCreator
#
#-------------------------------------------------
QT -= core gui
TARGET = gplay3d
TEMPLATE = lib
CONFIG += staticlib
CONFIG += c++11
CONFIG -= qt
CONFIG(debug, debug|release): DEFINES += _DEBUG

HEADERS += \
    src/ai/AIAgent.h \
    src/ai/AIController.h \
    src/ai/AIMessage.h \
    src/ai/AIState.h \
    src/ai/AIStateMachine.h \
    src/animation/Animation.h \
    src/animation/AnimationClip.h \
    src/animation/AnimationController.h \
    src/animation/AnimationTarget.h \
    src/animation/AnimationValue.h \
    src/audio/AudioBuffer.h \
    src/audio/AudioController.h \
    src/audio/AudioListener.h \
    src/audio/AudioSource.h \
    src/core/Base.h \
    src/core/Bundle.h \
    src/core/DebugNew.h \
    src/core/FileSystem.h \
    src/core/FileWatcher.h \
    src/core/Game.h \
    src/core/Logger.h \
    src/core/Platform.h \
    src/core/Properties.h \
    src/core/Ref.h \
    src/core/Singleton.h \
    src/core/Stream.h \
    src/core/StringHash.h \
    src/core/TimeListener.h \
    src/core/Variant.h \
    src/events/BaseEventData.h \
    src/events/EventManager.h \
    src/events/EventManagerBase.h \
    src/events/FastDelegate.h \
    src/events/FastDelegateBind.h \
    src/graphics/Camera.h \
    src/graphics/Drawable.h \
    src/graphics/Effect.h \
    src/graphics/Font.h \
    src/graphics/FrameBuffer.h \
    src/graphics/HeightField.h \
    src/graphics/Image.h \
    src/graphics/Joint.h \
    src/graphics/Light.h \
    src/graphics/Material.h \
    src/graphics/MaterialParameter.h \
    src/graphics/Mesh.h \
    src/graphics/MeshBatch.h \
    src/graphics/MeshPart.h \
    src/graphics/MeshSkin.h \
    src/graphics/Model.h \
    src/graphics/Node.h \
    src/graphics/ParticleEmitter.h \
    src/graphics/Pass.h \
    src/graphics/RenderState.h \
    src/graphics/Scene.h \
    src/graphics/SceneLoader.h \
    src/graphics/ScreenDisplayer.h \
    src/graphics/Sprite.h \
    src/graphics/SpriteBatch.h \
    src/graphics/Technique.h \
    src/graphics/Terrain.h \
    src/graphics/TerrainPatch.h \
    src/graphics/Text.h \
    src/graphics/Texture.h \
    src/graphics/TileSet.h \
    src/graphics/VertexFormat.h \
    src/input/Gamepad.h \
    src/input/Gesture.h \
    src/input/JoystickControl.h \
    src/input/Keyboard.h \
    src/input/Mouse.h \
    src/input/Touch.h \    
    src/math/BoundingBox.h \
    src/math/BoundingSphere.h \
    src/math/Curve.h \
    src/math/Frustum.h \
    src/math/MathUtil.h \
    src/math/Matrix.h \
    src/math/Plane.h \
    src/math/Quaternion.h \
    src/math/Ray.h \
    src/math/Rectangle.h \
    src/math/Transform.h \
    src/math/Vector2.h \
    src/math/Vector3.h \
    src/math/Vector4.h \
    src/physics/PhysicsCharacter.h \
    src/physics/PhysicsCollisionObject.h \
    src/physics/PhysicsCollisionShape.h \
    src/physics/PhysicsConstraint.h \
    src/physics/PhysicsController.h \
    src/physics/PhysicsFixedConstraint.h \
    src/physics/PhysicsGenericConstraint.h \
    src/physics/PhysicsGhostObject.h \
    src/physics/PhysicsHingeConstraint.h \
    src/physics/PhysicsRigidBody.h \
    src/physics/PhysicsSocketConstraint.h \
    src/physics/PhysicsSpringConstraint.h \
    src/physics/PhysicsVehicle.h \
    src/physics/PhysicsVehicleWheel.h \
    src/renderer/BGFXGpuProgram.h \
    src/renderer/BGFXImGui.h \
    src/renderer/BGFXIndexBuffer.h \
    src/renderer/BGFXRenderer.h \
    src/renderer/BGFXTexture.h \
    src/renderer/BGFXUniform.h \
    src/renderer/BGFXVertexBuffer.h \
    src/renderer/GeometryBuffer.h \
    src/renderer/MemoryBuffer.h \
    src/renderer/Renderer.h \
    src/script/Script.h \
    src/script/ScriptController.h \
    src/script/ScriptTarget.h \
    src/sparkparticles/SparkBaseRenderer.h \
    src/sparkparticles/SparkGP3D.h \
    src/sparkparticles/SparkParticleEmitter.h \
    src/sparkparticles/SparkQuadRenderer.h \
    src/sparkparticles/SparkUtility.h \
    src/ui/AbsoluteLayout.h \
    src/ui/Button.h \
    src/ui/CheckBox.h \
    src/ui/Container.h \
    src/ui/Control.h \
    src/ui/ControlFactory.h \
    src/ui/FlowLayout.h \
    src/ui/Form.h \
    src/ui/ImageControl.h \
    src/ui/Label.h \
    src/ui/Layout.h \
    src/ui/RadioButton.h \
    src/ui/Slider.h \
    src/ui/TextBox.h \
    src/ui/Theme.h \
    src/ui/ThemeStyle.h \
    src/ui/VerticalLayout.h \
    src/gplay3d.h \
    src/graphics/View.h

SOURCES += \
    src/ai/AIAgent.cpp \
    src/ai/AIController.cpp \
    src/ai/AIMessage.cpp \
    src/ai/AIState.cpp \
    src/ai/AIStateMachine.cpp \
    src/animation/Animation.cpp \
    src/animation/AnimationClip.cpp \
    src/animation/AnimationController.cpp \
    src/animation/AnimationTarget.cpp \
    src/animation/AnimationValue.cpp \
    src/audio/AudioBuffer.cpp \
    src/audio/AudioController.cpp \
    src/audio/AudioListener.cpp \
    src/audio/AudioSource.cpp \
    src/core/Bundle.cpp \
    src/core/DebugNew.cpp \
    src/core/FileSystem.cpp \
    src/core/FileWatcher.cpp \
    src/core/Game.cpp \   
    src/core/Logger.cpp \
    src/core/Platform.cpp \
    src/core/Properties.cpp \
    src/core/Ref.cpp \
    src/events/EventManager.cpp \
    src/events/EventManagerBase.cpp \
    src/graphics/Camera.cpp \
    src/graphics/Drawable.cpp \
    src/graphics/Effect.cpp \
    src/graphics/Font.cpp \
    src/graphics/FrameBuffer.cpp \
    src/graphics/HeightField.cpp \
    src/graphics/Image.cpp \
    src/graphics/Joint.cpp \
    src/graphics/Light.cpp \
    src/graphics/Material.cpp \
    src/graphics/MaterialParameter.cpp \
    src/graphics/Mesh.cpp \
    src/graphics/MeshBatch.cpp \
    src/graphics/MeshPart.cpp \
    src/graphics/MeshSkin.cpp \
    src/graphics/Model.cpp \
    src/graphics/Node.cpp \
    src/graphics/ParticleEmitter.cpp \
    src/graphics/Pass.cpp \
    src/graphics/RenderState.cpp \
    src/graphics/Scene.cpp \
    src/graphics/SceneLoader.cpp \
    src/graphics/ScreenDisplayer.cpp \
    src/graphics/Sprite.cpp \
    src/graphics/SpriteBatch.cpp \
    src/graphics/Technique.cpp \
    src/graphics/Terrain.cpp \
    src/graphics/TerrainPatch.cpp \
    src/graphics/Text.cpp \
    src/graphics/Texture.cpp \
    src/graphics/TileSet.cpp \
    src/graphics/VertexFormat.cpp \
    src/input/Gamepad.cpp \
    src/input/JoystickControl.cpp \    
    src/math/BoundingBox.cpp \
    src/math/BoundingSphere.cpp \
    src/math/Curve.cpp \
    src/math/Frustum.cpp \
    src/math/MathUtil.cpp \
    src/math/Matrix.cpp \
    src/math/Plane.cpp \
    src/math/Quaternion.cpp \
    src/math/Ray.cpp \
    src/math/Rectangle.cpp \
    src/math/Transform.cpp \
    src/math/Vector2.cpp \
    src/math/Vector3.cpp \
    src/math/Vector4.cpp \
    src/physics/PhysicsCharacter.cpp \
    src/physics/PhysicsCollisionObject.cpp \
    src/physics/PhysicsCollisionShape.cpp \
    src/physics/PhysicsConstraint.cpp \
    src/physics/PhysicsController.cpp \
    src/physics/PhysicsFixedConstraint.cpp \
    src/physics/PhysicsGenericConstraint.cpp \
    src/physics/PhysicsGhostObject.cpp \
    src/physics/PhysicsHingeConstraint.cpp \
    src/physics/PhysicsRigidBody.cpp \
    src/physics/PhysicsSocketConstraint.cpp \
    src/physics/PhysicsSpringConstraint.cpp \
    src/physics/PhysicsVehicle.cpp \
    src/physics/PhysicsVehicleWheel.cpp \
    src/renderer/BGFXGpuProgram.cpp \
    src/renderer/BGFXImGui.cpp \
    src/renderer/BGFXIndexBuffer.cpp \
    src/renderer/BGFXRenderer.cpp \
    src/renderer/BGFXTexture.cpp \
    src/renderer/BGFXUniform.cpp \
    src/renderer/BGFXVertexBuffer.cpp \
    src/renderer/GeometryBuffer.cpp \
    src/renderer/MemoryBuffer.cpp \
    src/script/Script.cpp \
    src/script/ScriptController.cpp \
    src/script/ScriptTarget.cpp \
    src/sparkparticles/SparkBaseRenderer.cpp \
    src/sparkparticles/SparkParticleEmitter.cpp \
    src/sparkparticles/SparkQuadRenderer.cpp \
    src/sparkparticles/SparkUtility.cpp \
    src/ui/AbsoluteLayout.cpp \
    src/ui/Button.cpp \
    src/ui/CheckBox.cpp \
    src/ui/Container.cpp \
    src/ui/Control.cpp \
    src/ui/ControlFactory.cpp \
    src/ui/FlowLayout.cpp \
    src/ui/Form.cpp \
    src/ui/ImageControl.cpp \
    src/ui/Label.cpp \
    src/ui/Layout.cpp \
    src/ui/RadioButton.cpp \
    src/ui/Slider.cpp \
    src/ui/TextBox.cpp \
    src/ui/Theme.cpp \
    src/ui/ThemeStyle.cpp \
    src/ui/VerticalLayout.cpp \
    src/graphics/View.cpp


#DEFINES += COMPIL_WITH_LUA
contains(DEFINES, COMPIL_WITH_LUA) {
HEADERS += \
    src/lua/lua_AbsoluteLayout.h \
    src/lua/lua_AIAgent.h \
    src/lua/lua_AIAgentListener.h \
    src/lua/lua_AIController.h \
    src/lua/lua_AIMessage.h \
    src/lua/lua_AIState.h \
    src/lua/lua_AIStateListener.h \
    src/lua/lua_AIStateMachine.h \
    src/lua/lua_all_bindings.h \
    src/lua/lua_Animation.h \
    src/lua/lua_AnimationClip.h \
    src/lua/lua_AnimationClipListener.h \
    src/lua/lua_AnimationController.h \
    src/lua/lua_AnimationTarget.h \
    src/lua/lua_AnimationValue.h \
    src/lua/lua_AudioBuffer.h \
    src/lua/lua_AudioController.h \
    src/lua/lua_AudioListener.h \
    src/lua/lua_AudioSource.h \
    src/lua/lua_BoundingBox.h \
    src/lua/lua_BoundingSphere.h \
    src/lua/lua_Bundle.h \
    src/lua/lua_Button.h \
    src/lua/lua_Camera.h \
    src/lua/lua_CameraListener.h \
    src/lua/lua_CheckBox.h \
    src/lua/lua_Container.h \
    src/lua/lua_Control.h \
    src/lua/lua_ControlListener.h \
    src/lua/lua_Curve.h \
    src/lua/lua_Drawable.h \
    src/lua/lua_Effect.h \
    src/lua/lua_FileSystem.h \
    src/lua/lua_FlowLayout.h \
    src/lua/lua_Font.h \
    src/lua/lua_Form.h \
    src/lua/lua_FrameBuffer.h \
    src/lua/lua_Frustum.h \
    src/lua/lua_Game.h \
    src/lua/lua_Gamepad.h \
    src/lua/lua_Gesture.h \
    src/lua/lua_Global.h \
    src/lua/lua_HeightField.h \
    src/lua/lua_Image.h \
    src/lua/lua_ImageControl.h \
    src/lua/lua_ImageFormat.h \
    src/lua/lua_Joint.h \
    src/lua/lua_JoystickControl.h \
    src/lua/lua_Keyboard.h \
    src/lua/lua_Label.h \
    src/lua/lua_Layout.h \
    src/lua/lua_Light.h \
    src/lua/lua_Logger.h \
    src/lua/lua_Material.h \
    src/lua/lua_MaterialParameter.h \
    src/lua/lua_MathUtil.h \
    src/lua/lua_Matrix.h \
    src/lua/lua_Mesh.h \
    src/lua/lua_MeshBatch.h \
    src/lua/lua_MeshPart.h \
    src/lua/lua_MeshSkin.h \
    src/lua/lua_Model.h \
    src/lua/lua_Mouse.h \
    src/lua/lua_Node.h \
    src/lua/lua_NodeCloneContext.h \
    src/lua/lua_ParticleEmitter.h \
    src/lua/lua_Pass.h \
    src/lua/lua_PhysicsCharacter.h \
    src/lua/lua_PhysicsCollisionObject.h \
    src/lua/lua_PhysicsCollisionObjectCollisionListener.h \
    src/lua/lua_PhysicsCollisionObjectCollisionPair.h \
    src/lua/lua_PhysicsCollisionObjectType.h \
    src/lua/lua_PhysicsCollisionShape.h \
    src/lua/lua_PhysicsCollisionShapeDefinition.h \
    src/lua/lua_PhysicsConstraint.h \
    src/lua/lua_PhysicsController.h \
    src/lua/lua_PhysicsControllerHitFilter.h \
    src/lua/lua_PhysicsControllerHitResult.h \
    src/lua/lua_PhysicsControllerListener.h \
    src/lua/lua_PhysicsFixedConstraint.h \
    src/lua/lua_PhysicsGenericConstraint.h \
    src/lua/lua_PhysicsGhostObject.h \
    src/lua/lua_PhysicsHingeConstraint.h \
    src/lua/lua_PhysicsRigidBody.h \
    src/lua/lua_PhysicsRigidBodyParameters.h \
    src/lua/lua_PhysicsSocketConstraint.h \
    src/lua/lua_PhysicsSpringConstraint.h \
    src/lua/lua_PhysicsVehicle.h \
    src/lua/lua_PhysicsVehicleWheel.h \
    src/lua/lua_Plane.h \
    src/lua/lua_Platform.h \
    src/lua/lua_Properties.h \
    src/lua/lua_Quaternion.h \
    src/lua/lua_RadioButton.h \
    src/lua/lua_Ray.h \
    src/lua/lua_Rectangle.h \
    src/lua/lua_Ref.h \
    src/lua/lua_RenderState.h \
    src/lua/lua_RenderTarget.h \
    src/lua/lua_Scene.h \
    src/lua/lua_ScreenDisplayer.h \
    src/lua/lua_Script.h \
    src/lua/lua_ScriptController.h \
    src/lua/lua_ScriptTarget.h \
    src/lua/lua_ScriptTargetEvent.h \
    src/lua/lua_ScriptTargetEventRegistry.h \
    src/lua/lua_Slider.h \
    src/lua/lua_Sprite.h \
    src/lua/lua_SpriteBatch.h \
    src/lua/lua_SpriteBatchSpriteVertex.h \
    src/lua/lua_Technique.h \
    src/lua/lua_Terrain.h \
    src/lua/lua_TerrainPatch.h \
    src/lua/lua_Text.h \
    src/lua/lua_TextBox.h \
    src/lua/lua_Texture.h \
    src/lua/lua_TextureSampler.h \
    src/lua/lua_Theme.h \
    src/lua/lua_ThemeSideRegions.h \
    src/lua/lua_ThemeStyle.h \
    src/lua/lua_ThemeThemeImage.h \
    src/lua/lua_ThemeUVs.h \
    src/lua/lua_TileSet.h \
    src/lua/lua_Touch.h \
    src/lua/lua_TouchTouchEvent.h \
    src/lua/lua_Transform.h \
    src/lua/lua_TransformListener.h \
    src/lua/lua_Vector2.h \
    src/lua/lua_Vector3.h \
    src/lua/lua_Vector4.h \
    src/lua/lua_VertexFormat.h \
    src/lua/lua_VertexFormatElement.h \
    src/lua/lua_VerticalLayout.h

SOURCES += \
    src/lua/lua_all_bindings.cpp \
    src/lua/lua_AbsoluteLayout.cpp \
    src/lua/lua_AIAgent.cpp \
    src/lua/lua_AIAgentListener.cpp \
    src/lua/lua_AIController.cpp \
    src/lua/lua_AIMessage.cpp \
    src/lua/lua_AIState.cpp \
    src/lua/lua_AIStateListener.cpp \
    src/lua/lua_AIStateMachine.cpp \
    src/lua/lua_Animation.cpp \
    src/lua/lua_AnimationClip.cpp \
    src/lua/lua_AnimationClipListener.cpp \
    src/lua/lua_AnimationController.cpp \
    src/lua/lua_AnimationTarget.cpp \
    src/lua/lua_AnimationValue.cpp \
    src/lua/lua_AudioBuffer.cpp \
    src/lua/lua_AudioController.cpp \
    src/lua/lua_AudioListener.cpp \
    src/lua/lua_AudioSource.cpp \
    src/lua/lua_BoundingBox.cpp \
    src/lua/lua_BoundingSphere.cpp \
    src/lua/lua_Bundle.cpp \
    src/lua/lua_Button.cpp \
    src/lua/lua_Camera.cpp \
    src/lua/lua_CameraListener.cpp \
    src/lua/lua_CheckBox.cpp \
    src/lua/lua_Container.cpp \
    src/lua/lua_Control.cpp \
    src/lua/lua_ControlListener.cpp \
    src/lua/lua_Curve.cpp \
    src/lua/lua_Drawable.cpp \
    src/lua/lua_Effect.cpp \
    src/lua/lua_FileSystem.cpp \
    src/lua/lua_FlowLayout.cpp \
    src/lua/lua_Font.cpp \
    src/lua/lua_Form.cpp \
    src/lua/lua_FrameBuffer.cpp \
    src/lua/lua_Frustum.cpp \
    src/lua/lua_Game.cpp \
    src/lua/lua_Gamepad.cpp \
    src/lua/lua_Gesture.cpp \
    src/lua/lua_Global.cpp \
    src/lua/lua_HeightField.cpp \
    src/lua/lua_Image.cpp \
    src/lua/lua_ImageControl.cpp \
    src/lua/lua_Joint.cpp \
    src/lua/lua_JoystickControl.cpp \
    src/lua/lua_Keyboard.cpp \
    src/lua/lua_Label.cpp \
    src/lua/lua_Layout.cpp \
    src/lua/lua_Light.cpp \
    src/lua/lua_Logger.cpp \
    src/lua/lua_Material.cpp \
    src/lua/lua_MaterialParameter.cpp \
    src/lua/lua_MathUtil.cpp \
    src/lua/lua_Matrix.cpp \
    src/lua/lua_Mesh.cpp \
    src/lua/lua_MeshBatch.cpp \
    src/lua/lua_MeshPart.cpp \
    src/lua/lua_MeshSkin.cpp \
    src/lua/lua_Model.cpp \
    src/lua/lua_Mouse.cpp \
    src/lua/lua_Node.cpp \
    src/lua/lua_NodeCloneContext.cpp \
    src/lua/lua_ParticleEmitter.cpp \
    src/lua/lua_Pass.cpp \
    src/lua/lua_PhysicsCharacter.cpp \
    src/lua/lua_PhysicsCollisionObject.cpp \
    src/lua/lua_PhysicsCollisionObjectCollisionListener.cpp \
    src/lua/lua_PhysicsCollisionObjectCollisionPair.cpp \
    src/lua/lua_PhysicsCollisionShape.cpp \
    src/lua/lua_PhysicsCollisionShapeDefinition.cpp \
    src/lua/lua_PhysicsConstraint.cpp \
    src/lua/lua_PhysicsController.cpp \
    src/lua/lua_PhysicsControllerHitFilter.cpp \
    src/lua/lua_PhysicsControllerHitResult.cpp \
    src/lua/lua_PhysicsControllerListener.cpp \
    src/lua/lua_PhysicsFixedConstraint.cpp \
    src/lua/lua_PhysicsGenericConstraint.cpp \
    src/lua/lua_PhysicsGhostObject.cpp \
    src/lua/lua_PhysicsHingeConstraint.cpp \
    src/lua/lua_PhysicsRigidBody.cpp \
    src/lua/lua_PhysicsRigidBodyParameters.cpp \
    src/lua/lua_PhysicsSocketConstraint.cpp \
    src/lua/lua_PhysicsSpringConstraint.cpp \
    src/lua/lua_PhysicsVehicle.cpp \
    src/lua/lua_PhysicsVehicleWheel.cpp \
    src/lua/lua_Plane.cpp \
    src/lua/lua_Platform.cpp \
    src/lua/lua_Properties.cpp \
    src/lua/lua_Quaternion.cpp \
    src/lua/lua_RadioButton.cpp \
    src/lua/lua_Ray.cpp \
    src/lua/lua_Rectangle.cpp \
    src/lua/lua_Ref.cpp \
    src/lua/lua_RenderState.cpp \
    src/lua/lua_RenderStateStateBlock.cpp \
    src/lua/lua_RenderTarget.cpp \
    src/lua/lua_Scene.cpp \
    src/lua/lua_ScreenDisplayer.cpp \
    src/lua/lua_Script.cpp \
    src/lua/lua_ScriptController.cpp \
    src/lua/lua_ScriptTarget.cpp \
    src/lua/lua_ScriptTargetEvent.cpp \
    src/lua/lua_ScriptTargetEventRegistry.cpp \
    src/lua/lua_Slider.cpp \
    src/lua/lua_Sprite.cpp \
    src/lua/lua_SpriteBatch.cpp \
    src/lua/lua_SpriteBatchSpriteVertex.cpp \
    src/lua/lua_Technique.cpp \
    src/lua/lua_Terrain.cpp \
    src/lua/lua_TerrainPatch.cpp \
    src/lua/lua_Text.cpp \
    src/lua/lua_TextBox.cpp \
    src/lua/lua_Texture.cpp \
    src/lua/lua_TextureSampler.cpp \
    src/lua/lua_Theme.cpp \
    src/lua/lua_ThemeSideRegions.cpp \
    src/lua/lua_ThemeStyle.cpp \
    src/lua/lua_ThemeThemeImage.cpp \
    src/lua/lua_ThemeUVs.cpp \
    src/lua/lua_TileSet.cpp \
    src/lua/lua_Touch.cpp \
    src/lua/lua_Transform.cpp \
    src/lua/lua_TransformListener.cpp \
    src/lua/lua_Vector2.cpp \
    src/lua/lua_Vector3.cpp \
    src/lua/lua_Vector4.cpp \
    src/lua/lua_VertexFormat.cpp \
    src/lua/lua_VertexFormatElement.cpp \
    src/lua/lua_VerticalLayout.cpp
} else {
    DEFINES += GP_NO_LUA_BINDINGS
}

INCLUDEPATH += $$PWD/../gplay3d/src
INCLUDEPATH += $$PWD/../external-deps/include
DEFINES += GP_USE_GAMEPAD

linux: PRE_TARGETDEPS += $$PWD/../external-deps/lib/linux/x86_64/libgplay3d-deps.a
linux: SOURCES += src/core/PlatformSDL2.cpp
linux: SOURCES += src/core/gplay3d-main-linux.cpp
linux: QMAKE_CXXFLAGS += -lstdc++ -pthread -w
linux: DEFINES += __linux__
linux: INCLUDEPATH += /usr/include/gtk-2.0
linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/gtk-2.0/include
linux: INCLUDEPATH += /usr/include/atk-1.0
linux: INCLUDEPATH += /usr/include/cairo
linux: INCLUDEPATH += /usr/include/gdk-pixbuf-2.0
linux: INCLUDEPATH += /usr/include/pango-1.0
linux: INCLUDEPATH += /usr/include/gio-unix-2.0
#linux: INCLUDEPATH += /usr/include/freetype2
linux: INCLUDEPATH += /usr/include/glib-2.0
linux: INCLUDEPATH += /usr/lib/x86_64-linux-gnu/glib-2.0/include
linux: INCLUDEPATH += /usr/include/pixman-1
linux: INCLUDEPATH += /usr/include/libpng12
linux: INCLUDEPATH += /usr/include/harfbuzz
# copy res
#linux: QMAKE_POST_LINK += $$quote(rsync -rau $$PWD/../res $$DESTDIR$$escape_expand(\n\t))
# symbolic link res
linux: QMAKE_POST_LINK += $$quote(ln -sfn $$PWD/../res $$DESTDIR/res$$escape_expand(\n\t))

macx: OBJECTIVE_SOURCES += src/PlatformMacOSX.mm
macx: OBJECTIVE_SOURCES += src/gplay3d-main-macosx.mm
macx: QMAKE_CXXFLAGS += -x c++ -x objective-c++ -stdlib=libc++ -w -arch x86_64
macx: LIBS += -F/System/Library/Frameworks -framework GameKit
macx: LIBS += -F/System/Library/Frameworks -framework IOKit
macx: LIBS += -F/System/Library/Frameworks -framework QuartzCore
macx: LIBS += -F/System/Library/Frameworks -framework OpenAL
macx: LIBS += -F/System/Library/Frameworks -framework OpenGL
macx: LIBS += -F/System/Library/Frameworks -framework Cocoa
macx: LIBS += -F/System/Library/Frameworks -framework Foundation

win32: PRE_TARGETDEPS += $$PWD/../external-deps/lib/windows/x86_64/Debug/gplay3d-deps.lib
win32: SOURCES += src/core/PlatformSDL2.cpp
win32: SOURCES += src/core/gplay3d-main-windows.cpp
win32: DEFINES += WIN32 _UNICODE UNICODE
win32: INCLUDEPATH += $$(DXSDK_DIR)/Include
win32: INCLUDEPATH += $$PWD/../external-deps/include/compat/msvc
win32: QMAKE_CXXFLAGS_WARN_ON -= -w34100
win32: QMAKE_CXXFLAGS_WARN_ON -= -w34189
win32: QMAKE_CXXFLAGS_WARN_ON -= -w4302
PWD_WIN = $${PWD}
PWD_WIN ~= s,/,\\,g
PWD_DEST_WIN = $$DESTDIR
PWD_DEST_WIN ~= s,/,\\,g
win32: QMAKE_POST_LINK += $$quote(xcopy $$PWD_WIN\..\res $$PWD_DEST_WIN\res\ /s /y /d$$escape_expand(\n\t))

DISTFILES += \
    ../res/core/shaders/common/bgfx_shader.sh \
    ../res/core/shaders/common/common.sh \
    ../res/core/shaders/common/gplay.sh \
    ../res/core/shaders/common/shaderlib.sh \
    ../res/core/shaders/common/varying.def.sc \
    ../res/core/shaders/test/cubes.io \
    ../res/core/shaders/debug/texture.frag \
    ../res/core/shaders/gbuffer/gbuffer.frag \
    ../res/core/shaders/gbuffer/viewport.frag \
    ../res/core/shaders/lighting/directionnalLight.frag \
    ../res/core/shaders/lighting/pointLight.frag \
    ../res/core/shaders/test/cubes.frag \
    ../res/core/shaders/debug/texture.vert \
    ../res/core/shaders/gbuffer/gbuffer.vert \
    ../res/core/shaders/gbuffer/viewport.vert \
    ../res/core/shaders/lighting/pointLight.vert \
    ../res/core/shaders/test/cubes.vert

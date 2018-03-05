
vec3 computeLighting(vec3 normalVector, vec3 lightDirection, vec3 lightColor, float attenuation)
{
    float diffuse = max(dot(normalVector, lightDirection), 0.0);
    vec3 diffuseColor = lightColor * _baseColor.rgb * diffuse * attenuation;

    #if defined(SPECULAR)

    	// Phong shading
        //vec3 vertexToEye = normalize(v_cameraDirection);
        //vec3 specularAngle = normalize(normalVector * diffuse * 2.0 - lightDirection);  
        //vec3 specularColor = vec3(pow(clamp(dot(specularAngle, vertexToEye), 0.0, 1.0), u_specularExponent.x));

        // Blinn-Phong shading
        vec3 vertexToEye = normalize(v_cameraDirection);
        vec3 halfVector = normalize(lightDirection + vertexToEye);
        float specularAngle = clamp(dot(normalVector, halfVector), 0.0, 1.0);
        vec3 specularColor = vec3(pow(specularAngle, u_specularExponent.x)) * attenuation;

        return diffuseColor + specularColor;

    #else
    
        return diffuseColor;
    
    #endif
}

vec3 getLitPixel()
{
    #if defined(BUMPED)    
        vec3 normalVector = normalize(texture2D(u_normalmapTexture, v_texCoord).rgb * 2.0 - 1.0);
    #else    
        vec3 normalVector = normalize(v_normalVector);
    #endif
    
    vec3 ambientColor = _baseColor.rgb * u_ambientColor.rgb;
    vec3 combinedColor = ambientColor;

    // Directional light contribution
    #if (DIRECTIONAL_LIGHT_COUNT > 0)
    for (int i = 0; i < DIRECTIONAL_LIGHT_COUNT; ++i)
    {
        #if defined(BUMPED)
            vec3 directionalLightDirection = v_tangentSpaceTransformMatrix * u_directionalLightDirection[i].xyz;
            vec3 lightDirection = normalize(directionalLightDirection * 2.0);
        #else
            vec3 lightDirection = normalize(u_directionalLightDirection[i].xyz * 2.0);
        #endif 
        combinedColor += computeLighting(normalVector, -lightDirection, u_directionalLightColor[i].rgb, 1.0);
    }
    #endif

    // Point light contribution
    #if (POINT_LIGHT_COUNT > 0)
    for (int i = 0; i < POINT_LIGHT_COUNT; ++i)
    {
        #if defined(BUMPED)
        	vec3 vertexToPointLightDirection = v_tangentSpaceTransformMatrix * (u_pointLightPosition[i].xyz - v_positionWorldViewSpace.xyz);
        #else
        	vec3 vertexToPointLightDirection = u_pointLightPosition[i].xyz - v_positionWorldViewSpace.xyz;
        #endif

        vec3 ldir = vertexToPointLightDirection * u_pointLightRangeInverse[i].x;
        float attenuation = clamp(1.0 - dot(ldir, ldir), 0.0, 1.0);
        combinedColor += computeLighting(normalVector, normalize(vertexToPointLightDirection), u_pointLightColor[i].rgb, attenuation);
    }
    #endif

    // Spot light contribution
    #if (SPOT_LIGHT_COUNT > 0)
    for (int i = 0; i < SPOT_LIGHT_COUNT; ++i)
    {
        #if defined(BUMPED)
            vec3 v_vertexToSpotLightDirection = v_tangentSpaceTransformMatrix * (u_spotLightPosition[i].xyz - v_positionWorldViewSpace.xyz);
            vec3 v_spotLightDirection = v_tangentSpaceTransformMatrix * u_spotLightDirection[i].xyz;
        #else
            vec3 v_vertexToSpotLightDirection = u_spotLightPosition[i].xyz - v_positionWorldViewSpace.xyz; 
        #endif

        // Compute range attenuation
        vec3 ldir = v_vertexToSpotLightDirection * u_spotLightRangeInverse[i].x;
        float attenuation = clamp(1.0 - dot(ldir, ldir), 0.0, 1.0);
        vec3 vertexToSpotLightDirection = normalize(v_vertexToSpotLightDirection);

        #if defined(BUMPED)
            vec3 spotLightDirection = normalize(v_spotLightDirection * 2.0);
        #else
            vec3 spotLightDirection = normalize(u_spotLightDirection[i].xyz * 2.0);
        #endif

        // "-lightDirection" is used because light direction points in opposite direction to spot direction.
        float spotCurrentAngleCos = dot(spotLightDirection, -vertexToSpotLightDirection);

        // Apply spot attenuation
        attenuation *= smoothstep(u_spotLightOuterAngleCos[i].x, u_spotLightInnerAngleCos[i].x, spotCurrentAngleCos);
        combinedColor += computeLighting(normalVector, vertexToSpotLightDirection, u_spotLightColor[i].rgb, attenuation);
    }
    #endif

    return combinedColor;
}

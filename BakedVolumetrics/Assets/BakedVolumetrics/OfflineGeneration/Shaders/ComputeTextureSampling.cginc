//|||||||||||||||||||||||||||||||||||||| TEXTURE SAMPLING ||||||||||||||||||||||||||||||||||||||
//|||||||||||||||||||||||||||||||||||||| TEXTURE SAMPLING ||||||||||||||||||||||||||||||||||||||
//|||||||||||||||||||||||||||||||||||||| TEXTURE SAMPLING ||||||||||||||||||||||||||||||||||||||

SamplerState _PointClamp;
SamplerState _LinearClamp;

float4 TEX2D_SHARP(Texture2D<float4> tex, float2 uv, float mipLevel)
{
    return tex.SampleLevel(_PointClamp, uv, mipLevel);
}

float4 TEX2D(Texture2D<float4> tex, float2 uv, float mipLevel)
{
    return tex.SampleLevel(_LinearClamp, uv, mipLevel);
}

float4 TEX3D_SHARP(Texture3D<float4> tex, float3 position, float mipLevel)
{
    return tex.SampleLevel(_PointClamp, position, mipLevel);
}

float4 TEX3D(Texture3D<float4> tex, float3 position, float mipLevel)
{
    return tex.SampleLevel(_LinearClamp, position, mipLevel);
}

float4 TEXCUBE_SHARP(TextureCube<float4> tex, float3 position, float mipLevel)
{
    return tex.SampleLevel(_PointClamp, position, mipLevel);
}

float4 TEXCUBE(TextureCube<float4> tex, float3 position, float mipLevel)
{
    return tex.SampleLevel(_LinearClamp, position, mipLevel);
}
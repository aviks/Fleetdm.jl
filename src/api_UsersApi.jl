# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct UsersApi <: SwaggerApi
    client::Swagger.Client
end

function _swaggerinternal_apiV1FleetUsersGet(_api::UsersApi; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Nothing, "/api/v1/fleet/users", ["bearerAuth"])
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List Users

Params:

Return: Nothing
"""
function apiV1FleetUsersGet(_api::UsersApi; _mediaType=nothing)
    _ctx = _swaggerinternal_apiV1FleetUsersGet(_api; _mediaType=_mediaType)
    Swagger.exec(_ctx)
end

function apiV1FleetUsersGet(_api::UsersApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _swaggerinternal_apiV1FleetUsersGet(_api; _mediaType=_mediaType)
    Swagger.exec(_ctx, response_stream)
end

export apiV1FleetUsersGet

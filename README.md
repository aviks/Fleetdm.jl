# Fleetdm

[![version](https://docs.juliahub.com//SlackSDK/version.svg)](https://juliahub.com/ui/Packages/Fleetdm/8MvHX)
[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://docs.juliahub.com/Fleetdm/8MvHX)
[![Build Status](https://github.com/aviks/Fleetdm.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/aviks/Fleetdm.jl/actions/workflows/CI.yml?query=branch%3Amain)

A Julia client for the [Fleet](https://fleetdm.com/) device management server. 

## Usage

```julia
using Fleetdm
```


```julia
token = "woY...........g=="  # Or fetch from ENV
hdrs = Dict{String,String}("Authorization"=>"Bearer $token")
using Swagger
client = Swagger.client("https://dogfood.fleetdm.com", headers=hdrs)
```

```julia
julia> hostapi = HostsApi(client)
HostsApi(Swagger.Client("https://dogfood.fleetdm.com", Dict("Authorization" => "Bearer woY.....

julia> apiV1FleetHostsCountGet(hostapi)
Dict{String, Any} with 1 entry:
  "count" => 60

julia> apiV1FleetHostsGet(hostapi)
Dict{String, Any} with 1 entry:
  "hosts" => Any[Dict{String, Any}("policy_updated_at"=>"2022-03-01T15:12:59Z", "pack_stats"=>nothing, "created_at"=>"2022-02-10T05:06:29Z", "b…

julia> apiV1FleetHostsHostIdGet(hostapi, "23")
Dict{String, Any} with 1 entry:
  "host" => Dict{String, Any}("build"=>"19043", "os_version"=>"Microsoft Windows 10 Pro 10.0", …
```


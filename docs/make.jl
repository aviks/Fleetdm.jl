using Fleetdm
using Documenter

DocMeta.setdocmeta!(Fleetdm, :DocTestSetup, :(using Fleetdm); recursive=true)

makedocs(;
    modules=[Fleetdm],
    authors="Avik Sengupta",
    repo="https://github.com/aviks/Fleetdm.jl/blob/{commit}{path}#{line}",
    sitename="Fleetdm.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

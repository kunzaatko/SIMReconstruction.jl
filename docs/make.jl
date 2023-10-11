using SIMReconstruction
using Documenter

DocMeta.setdocmeta!(SIMReconstruction, :DocTestSetup, :(using SIMReconstruction); recursive=true)

makedocs(;
    modules=[SIMReconstruction],
    authors="Martin Kunz <martinkunz@email.cz> and contributors",
    repo="https://github.com/kunzaatko/SIMReconstruction.jl/blob/{commit}{path}#{line}",
    sitename="SIMReconstruction.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kunzaatko.github.io/SIMReconstruction.jl",
        edit_link="trunk",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kunzaatko/SIMReconstruction.jl",
    devbranch="trunk",
)

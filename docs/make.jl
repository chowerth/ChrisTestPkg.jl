using ChrisTestPkg
using Documenter

DocMeta.setdocmeta!(ChrisTestPkg, :DocTestSetup, :(using ChrisTestPkg); recursive=true)

makedocs(;
    modules=[ChrisTestPkg],
    authors="Chris Howerth <chrishowerth@gmail.com> and contributors",
    repo="https://github.com/chowerth/ChrisTestPkg.jl/blob/{commit}{path}#{line}",
    sitename="ChrisTestPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://chowerth.github.io/ChrisTestPkg.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/chowerth/ChrisTestPkg.jl",
    devbranch="main",
)

#!/usr/bin/julia

function main()
    dir = ARGS

    repos = readlines(`find $dir -name ".git"`)

    for repo in repos
        println("")
        println(repo)

        cd(repo[1:end-4])

        `git pull origin master`

        cd(dir)
    end
end

main()

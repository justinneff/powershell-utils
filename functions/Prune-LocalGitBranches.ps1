function Prune-LocalGitBranches {
    git fetch -p -q;
    git branch -vv | Where {
        if ($_ -like "*: gone]*") {
            $branchName = $_.Trim().split(" ")[0];
            git branch -D $branchName;
        }
    };
}

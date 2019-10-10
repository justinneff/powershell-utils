# powershell-utils
Useful PowerShell functions and scripts

## Setup

1. Open your powershell profile
```powershell
notepad $profile
```

2. Append the following lines to your PowerShell Profile
```powershell
Get-ChildItem "C:\{path\to}\powershell-utils\functions" | ForEach-Object { . $_.FullName }
```

3. Save profile and restart your powershell terminal

## Functions

- [Prune-LocalGitBranches](#Prune-LocalGitBranches)
- [Remove-NodeModules](#Remove-NodeModules)

### Prune-LocalGitBranches
Deletes local git branches that have been deleted from the remote git repository. This should be run from inside a git repo directory.

```powershell
Prune-LocalGitBranches
```

### Remove-NodeModules
Recursively delete `node_modules` folders under a directory. Optionally takes root path as an argument defaults to the current working directory.

```powershell
Remove-NodeModules

Remove-NodeModules "C:\dev\repos\my-repo"
```

Workflow courtesy of https://github.com/FireEater64/chef-actions

#### Chef GitHub Actions
![Chef CI](https://github.com/Affraes-Organisation/actions-chef-example/workflows/CI/badge.svg)

Playground to try-out Chef with Github Actions

### Known Issues
- Windows CI is failing as chef is reporting that the command is too long
    - for `kitchen converge`, `kitchen verify` and `kitchen test` commands.
    -  there is an additional Diagnose step and the `chef.bat kitchen verify` command is currently running with `-D` (`--debug`) flag until I can figure it out
    - Issue open at test-kitchen/test-kitchen#1630

``` yml
windows:
  runs-on: windows-latest
  steps:
  - uses: actions/checkout@v1
  - name: Install Chef
    run: |
         . { iwr -useb https://omnitruck.chef.io/install.ps1 } | iex; install -channel stable -project chefdk
         c:\opscode\chefdk\bin\chef.bat shell-init powershell | iex;

  - name: Check Kitchen Version
    run: c:\opscode\chefdk\bin\chef.bat exec kitchen --version
  - name: Diagnose
    run: c:\opscode\chefdk\bin\chef.bat exec kitchen diagnose --all default-windows-2019
  - name: Converge
    run: |
         systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List
         ruby --version
         c:\opscode\chefdk\bin\chef.bat exec kitchen converge --debug default-windows-2019
#    - name: Verify
#      run: c:\opscode\chefdk\bin\chef.bat exec kitchen verify --debug default-windows-2019
#    - name: Test
#      run: c:\opscode\chefdk\bin\chef.bat exec kitchen test --debug default-windows-2019
#
# Verify and Test fail as well, also fails with and without –debug flag for all three
```

<!--

 ### Protected Branches

[//]: # This copy of the repository has protected branches turned on, `master`can only be pushed/merged to upon a successful CI run.
-->

:construction: **The following is WORK IN PROGRESS** :construction:

### How to get going


#### Set up your copy of the repository

- [Mirror the repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/duplicating-a-repository)
- Clone the mirrored repository

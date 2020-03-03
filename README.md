Workflow courtesy of https://github.com/FireEater64/chef-actions

#### Chef GitHub Actions
![Chef CI](https://github.com/Affraes-Organisation/actions-chef-example/workflows/CI/badge.svg)

Playground to try-out Chef with Github Actions

### Known Issues
- Windows CI is failing as chef is reporting that the command is too long
    - chef.bat command currently running with `-D` (`--debug`) flag until I can figure it out:

``` yml
- name: Verify
  run: c:\opscode\chefdk\bin\chef.bat exec kitchen verify --debug default-windows-2019
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

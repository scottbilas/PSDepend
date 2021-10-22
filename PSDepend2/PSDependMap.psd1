# This defines dependencies. Feel free to create your own
# Top level node is the dependency name
#   Script is the script to run. These are stored in \PSDepend2\PSDependScripts
#   Description is a quick description of the dependency script
#   Supports is a way to filter supported platforms:  core, windows, macos, linux

# In some cases, it may be beneficial to include 'aliases'.  Just add nodes for these.
@{
    Chocolatey = @{
        Script = 'Chocolatey.ps1'
        Description = 'Install a Chocolatey package from a Chocolatey feed'
        Supports = 'windows:desktop','windows:core'
    }
    
    Command = @{
        Script = 'Command.ps1'
        Description = 'Invoke a command in PowerShell'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux'
    }

    DotnetSdk = @{
        Script = 'DotnetSdk.ps1'
        Description = "Installs the .NET Core SDK"
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    FileDownload = @{
        Script = 'FileDownload.ps1'
        Description = 'Download a file'
        Supports = 'windows:desktop', 'windows:core'
    }

    FileSystem = @{
        Script = 'FileSystem.ps1'
        Description = 'Copy a file or folder'
        Supports = 'windows:desktop', 'windows:core'
    }

    Git = @{
        Script = 'Git.ps1'
        Description = 'Clone a git repository'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    GitHub = @{
        Script = 'GitHub.ps1'
        Description = 'Download and extract a GitHub repo'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    Npm = @{
        Script = 'Npm.ps1'
        Description = 'Install a node package'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    Noop = @{
        Script = 'Noop.ps1'
        Description = 'Display parameters that a depends script would receive. Use for testing and validation'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    Nuget = @{
        Script = 'Nuget.ps1'
        Description = 'Install a Nuget package from a Nuget feed'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    Package = @{
        Script = 'Package.ps1'
        Description = 'EXPERIMENTAL: Install a package via PackageManagement Install-Package'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    PSGalleryModule = @{
        Script= 'PSGalleryModule.ps1'
        Description = 'Install a PowerShell module from the PowerShell Gallery'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    PSGalleryNuget = @{
        Script = 'PSGalleryNuget.ps1'
        Description = 'Install a PowerShell module from the PowerShell Gallery without the PowerShellGet dependency'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }

    Task = @{
        Script = 'Task.ps1'
        Description = 'Support dependencies by handling simple tasks'
        Supports = 'windows:desktop', 'windows:core', 'macos:core', 'linux:core'
    }
}

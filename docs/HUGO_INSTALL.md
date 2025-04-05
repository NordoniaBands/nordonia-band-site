# Installing Hugo on Windows

Hugo is a fast and modern static site generator written in Go. This guide will walk you through the process of installing Hugo on a Windows system.

## Prerequisites

Before installing Hugo, make sure you have:

- Windows 7 or newer
- Administrative privileges (for some installation methods)
- Internet connection
- [Git](GIT_INSTALL.md) (optional, but recommended for version control)

## Installation Methods

There are several ways to install Hugo on Windows. Choose the method that works best for you.

### Method 1: Using Chocolatey Package Manager

[Chocolatey](https://chocolatey.org/) is a package manager for Windows. If you already have Chocolatey installed, this is the easiest method.

1. Open Command Prompt or PowerShell as Administrator
2. Run the following command:

```
choco install hugo -confirm
```

For the extended version with Sass/SCSS support (recommended):

```
choco install hugo-extended -confirm
```

3. Verify the installation by checking the version:

```
hugo version
```

### Method 2: Using Scoop Package Manager

[Scoop](https://scoop.sh/) is another package manager for Windows.

1. If you don't have Scoop installed, install it by opening PowerShell and running:

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

2. Install Hugo using Scoop:

```
scoop install hugo
```

For the extended version:

```
scoop install hugo-extended
```

3. Verify the installation:

```
hugo version
```

### Method 3: Manual Installation

If you prefer to install Hugo manually:

1. Go to the [Hugo Releases page](https://github.com/gohugoio/hugo/releases)
2. Download the appropriate Windows version:
   - `hugo_X.Y.Z_windows-amd64.zip` for the regular version
   - `hugo_extended_X.Y.Z_windows-amd64.zip` for the extended version (with Sass/SCSS support)
3. Extract the downloaded ZIP file to a folder, e.g., `C:\Hugo`
4. Add the Hugo executable to your PATH:
   - Right-click on "This PC" or "Computer" and select "Properties"
   - Click on "Advanced system settings"
   - Click the "Environment Variables" button
   - In the "System variables" section, find the "Path" variable, select it and click "Edit"
   - Click "New" and add the path to the directory containing the Hugo executable (e.g., `C:\Hugo`)
   - Click "OK" to close all dialogs
5. Open a new Command Prompt and verify the installation:

```
hugo version
```

## Verifying the Installation

To confirm that Hugo is properly installed:

1. Open Command Prompt or PowerShell
2. Run:

```
hugo version
```

You should see output similar to:

```
Hugo Static Site Generator v0.111.3-473669f797fcc6d959e6c49015c43ccc1a5bfee8 windows/amd64 BuildDate=2023-03-12T11:40:50Z VendorInfo=gohugoio
```

## Basic Usage

Here are some basic Hugo commands to get you started:

### Create a New Site

```
hugo new site my-site
cd my-site
```

### Add a Theme

```
git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke themes/ananke
echo "theme = 'ananke'" >> config.toml
```

### Create Content

```
hugo new posts/my-first-post.md
```

### Start the Hugo Server

```
hugo server -D
```

This will start a local web server, usually at http://localhost:1313/

### Build the Static Site

```
hugo
```

This generates your site in the `public/` directory.

## Troubleshooting

### Common Issues and Solutions

#### "hugo" is not recognized as an internal or external command

- Make sure Hugo is properly added to your PATH
- Try restarting your Command Prompt/PowerShell or computer
- Check if the Hugo executable exists in the directory you specified

#### Permission Denied

- Run Command Prompt or PowerShell as Administrator
- Check if your antivirus is blocking the execution

#### SCSS/SASS Processing Errors

- Make sure you've installed the extended version of Hugo
- Verify your Hugo version with `hugo version` (it should mention "extended")

#### Dependency Issues

- Make sure Git is installed if you're working with themes as Git submodules
- Some themes might require additional tools like Node.js or npm

#### Cannot Connect to Server

- Check if another process is using port 1313
- Try specifying a different port with `hugo server -p 1414`

### Getting Help

If you encounter issues not covered here:

- Check the [official Hugo documentation](https://gohugo.io/documentation/)
- Visit the [Hugo forums](https://discourse.gohugo.io/)
- Search for similar issues on [GitHub](https://github.com/gohugoio/hugo/issues)

## Updating Hugo

To update Hugo:

- With Chocolatey: `choco upgrade hugo` or `choco upgrade hugo-extended`
- With Scoop: `scoop update hugo` or `scoop update hugo-extended`
- For manual installation, download the newest version and replace the executable


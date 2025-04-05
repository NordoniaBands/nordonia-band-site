# Installing Git on Windows

This guide provides step-by-step instructions for installing Git on Windows, configuring basic settings, and verifying your installation.

## Downloading Git for Windows

1. Go to the official Git website: [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. The download should start automatically. If not, click on the download link for the latest version.
3. Once downloaded, locate the installer file (typically in your Downloads folder).

## Installation Steps

1. Run the Git installer by double-clicking the downloaded file.
2. Review and accept the license agreement, then click "Next".

3. **Select Components**:
   - Leave the default options checked
   - Recommended additions:
     - Check "Git LFS (Large File Support)"
     - Check "Check daily for Git for Windows updates"
   - Click "Next"

4. **Choosing the default editor**:
   - Select your preferred text editor (Recommended: Visual Studio Code or Notepad++)
   - If you're unsure, you can keep the default (Vim)
   - Click "Next"

5. **Adjusting your PATH environment**:
   - Recommended: "Git from the command line and also from 3rd-party software"
   - Click "Next"

6. **Choosing HTTPS transport backend**:
   - Select "Use the OpenSSL library"
   - Click "Next"

7. **Configuring line ending conversions**:
   - Recommended: "Checkout Windows-style, commit Unix-style line endings"
   - Click "Next"

8. **Configuring the terminal emulator**:
   - Recommended: "Use MinTTY"
   - Click "Next"

9. **Configure extra options**:
   - Keep default options
   - Recommended: Ensure "Enable file system caching" is checked
   - Click "Next"

10. **Configure experimental options** (if prompted):
    - You can leave these unchecked
    - Click "Install"

11. Wait for the installation to complete, then click "Finish".

## Basic Configuration

After installing Git, you need to set up your identity. Open Git Bash (or Command Prompt/PowerShell) and run the following commands:

1. Set your name:
   ```
   git config --global user.name "Your Name"
   ```
   
2. Set your email address:
   ```
   git config --global user.email "your.email@example.com"
   ```
   
   Note: Use the same email address that you use or will use with your GitHub, GitLab, or other Git hosting account.

3. Set default branch name (recommended):
   ```
   git config --global init.defaultBranch main
   ```

4. Configure line endings (if not set during installation):
   ```
   git config --global core.autocrlf true
   ```

5. Optional: Set your default text editor:
   ```
   git config --global core.editor "notepad"
   ```
   Replace "notepad" with your preferred editor command.

## Verifying the Installation

To verify that Git is properly installed:

1. Open Command Prompt, PowerShell, or Git Bash
2. Run:
   ```
   git --version
   ```
   
   You should see output similar to:
   ```
   git version 2.41.0.windows.1
   ```
   
3. Check your configuration:
   ```
   git config --list
   ```
   
   This should display your configured username, email, and other settings.

## Setting Up SSH Keys (Optional but Recommended)

SSH keys allow you to connect to Git hosting services like GitHub without entering your password each time.

1. **Check for existing SSH keys**:
   ```
   dir %USERPROFILE%\.ssh
   ```
   or in Git Bash:
   ```
   ls -la ~/.ssh
   ```
   
   Look for files named `id_rsa` and `id_rsa.pub` or `id_ed25519` and `id_ed25519.pub`.

2. **Generate a new SSH key** (if you don't have one):
   ```
   ssh-keygen -t ed25519 -C "your.email@example.com"
   ```
   
   Or, if you're using an older system that doesn't support Ed25519:
   ```
   ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
   ```
   
   - Press Enter to accept the default file location
   - Enter a secure passphrase when prompted (recommended)

3. **Start the SSH agent**:
   In Git Bash:
   ```
   eval "$(ssh-agent -s)"
   ```
   
   In PowerShell:
   ```
   Start-Service ssh-agent
   ```

4. **Add your SSH key to the agent**:
   ```
   ssh-add ~/.ssh/id_ed25519
   ```
   or
   ```
   ssh-add ~/.ssh/id_rsa
   ```

5. **Copy your public key**:
   - Use a text editor to open the public key file (`id_ed25519.pub` or `id_rsa.pub`)
   - Or use:
     ```
     cat ~/.ssh/id_ed25519.pub
     ```
   - Copy the entire content

6. **Add the key to your Git hosting service**:
   - GitHub: Go to Settings → SSH and GPG keys → New SSH key
   - GitLab: Go to Profile Settings → SSH Keys
   - Paste your key and save

7. **Test your connection**:
   For GitHub:
   ```
   ssh -T git@github.com
   ```
   
   For GitLab:
   ```
   ssh -T git@gitlab.com
   ```

## Git GUI Clients (Optional)

If you prefer a graphical interface, consider installing one of these Git GUI clients:

- [GitHub Desktop](https://desktop.github.com/)
- [GitKraken](https://www.gitkraken.com/)
- [Sourcetree](https://www.sourcetreeapp.com/)
- [TortoiseGit](https://tortoisegit.org/)

## Troubleshooting

### Common Issues

1. **"git" is not recognized as a command**:
   - Restart your terminal/command prompt
   - Ensure Git is in your PATH (you may need to reinstall and select the appropriate PATH option)

2. **Permission issues**:
   - Run Git Bash or Command Prompt as administrator
   - Check your firewall settings if connecting to remote repositories

3. **SSL Certificate Problems**:
   - Update your Git installation
   - Check your system date and time

4. **Authentication Failed**:
   - Ensure you're using the correct username and password
   - If using SSH, verify your key is added to the agent and to your account
   - For GitHub users: Remember that password authentication is deprecated, use a personal access token instead

### Getting Help

- Run `git help` for a list of available commands
- Run `git help <command>` for specific command help
- Visit [Git documentation](https://git-scm.com/doc)
- For Windows-specific issues, visit [Git for Windows](https://gitforwindows.org/)

## Updating Git

To update Git on Windows:

1. Download the latest installer from [git-scm.com](https://git-scm.com/download/win)
2. Run the installer and follow the prompts
3. Your settings will typically be preserved

Alternatively, if you installed Git via a package manager:
- Chocolatey: `choco upgrade git`
- Scoop: `scoop update git`


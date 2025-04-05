# Contributing to the Band Webpage

Thank you for your interest in contributing to our band webpage! This guide will help you get started with the development process and ensure your contributions are smoothly integrated into the project.

## Table of Contents

1. [Setting Up the Development Environment](#setting-up-the-development-environment)
2. [Workflow Steps](#workflow-steps)
3. [Commit Message Guidelines](#commit-message-guidelines)
4. [How to Push Changes](#how-to-push-changes)
5. [Best Practices](#best-practices)
6. [Getting Help](#getting-help)

## Setting Up the Development Environment

### Prerequisites

Before you start contributing, make sure you have the following installed:

1. **Git**: [Installation instructions](GIT_INSTALL.md)
2. **Hugo**: [Installation instructions](HUGO_INSTALL.md)
3. **Git LFS**: This is usually installed with Git, but if not:
   - Windows (with Chocolatey): `choco install git-lfs`
   - macOS (with Homebrew): `brew install git-lfs`
   - Linux: `sudo apt install git-lfs` (Ubuntu/Debian) or `sudo yum install git-lfs` (CentOS/RHEL)

### Clone the Repository

```bash
git clone https://github.com/your-organization/band-webpage.git
cd band-webpage
```

### Initialize Git LFS

```bash
git lfs install
```

### Install Dependencies

If the project uses npm packages (for themes or build tools):

```bash
npm install
```

### Local Development Server

Start the Hugo development server to preview your changes:

```bash
hugo server -D
```

This will start a local server, typically at http://localhost:1313/

## Workflow Steps

### 1. Ensure Your Repository is Up to Date

Always start by updating your local copy of the repository:

```bash
git checkout main
git pull origin main
```

### 2. Create a New Branch (Optional but Recommended)

For significant changes, create a new branch:

```bash
git checkout -b feature/your-feature-name
```

For small changes, you can work directly on the main branch.

### 3. Make Your Changes

#### Content Changes

- Add or modify content in the `content/` directory
- Create new pages using Hugo commands:
  ```bash
  hugo new posts/my-post.md
  hugo new events/upcoming-concert.md
  ```

#### Image Additions

When adding images:
1. Place them in the appropriate directory under `static/images/`
2. Git LFS will automatically track them based on file extensions

#### Theme Changes

- Modify templates in `layouts/` directory
- Adjust styles in `assets/` or `static/css/` depending on the project structure

### 4. Preview Your Changes

Always check your changes using the local development server:

```bash
hugo server -D
```

### 5. Commit Your Changes

Stage and commit your changes with descriptive commit messages:

```bash
git add .
git commit -m "Add concert schedule for Fall 2025"
```

See the [Commit Message Guidelines](#commit-message-guidelines) section for more details.

## Commit Message Guidelines

Good commit messages make the project history easy to understand. Follow these guidelines:

### Format

```
<type>: <subject>

<body>
```

### Types

- **feat**: A new feature or content
- **fix**: A bug or content fix
- **docs**: Documentation changes
- **style**: Formatting, missing semicolons, etc; no code/content change
- **refactor**: Code/content restructuring
- **img**: Image additions or updates
- **chore**: Maintenance tasks, dependency updates, etc.

### Examples

```
feat: Add winter concert schedule page

Add new page listing all winter concert dates and ticket information.
```

```
img: Update band director's headshot

Replace with new professional photo from 2025 photoshoot.
```

```
fix: Correct typo in marching band schedule
```

## How to Push Changes

### Pushing to Main Branch

If you're working directly on the main branch:

```bash
git push origin main
```

### Pushing a Feature Branch

If you created a separate branch:

```bash
git push origin feature/your-feature-name
```

Then, create a Pull Request on GitHub/GitLab for review (if that's part of your workflow).

### Handling Large Files with Git LFS

When pushing changes that include images or other large files:

1. Make sure you've committed all changes
2. Git LFS will automatically handle the large files during push
3. Push as normal:
   ```bash
   git push origin main
   ```

If you encounter issues with LFS files, try:

```bash
git lfs push --all origin main
```

## Best Practices

### Content Guidelines

1. **Consistency**: Maintain consistent formatting and style across pages
2. **Accuracy**: Double-check all dates, times, and contact information
3. **Accessibility**: Use alt text for images and maintain good contrast
4. **Responsiveness**: Check how content appears on different devices

### Image Guidelines

1. **Format**: Use web-optimized formats
   - Photos: JPG or WebP
   - Graphics with transparency: PNG
   - Simple graphics: SVG when possible
2. **Size**: Keep image file sizes reasonable (< 200KB preferred)
3. **Dimensions**: Resize images to their display size before uploading
4. **Naming**: Use descriptive, kebab-case names (e.g., `marching-band-2025.jpg`)

### Working with Hugo

1. **Front Matter**: Include appropriate front matter in all content files
2. **Shortcodes**: Use Hugo shortcodes for consistent components
3. **Partials**: Leverage partial templates for repeated elements
4. **Testing**: Check both development and production builds

## Getting Help

If you encounter issues or have questions:

1. Check the [Hugo documentation](https://gohugo.io/documentation/)
2. Review the project's README.md file
3. Contact the project maintainer at [maintainer@email.com]

Thank you for contributing to our band webpage!


# Band Webpage Documentation

## Project Overview

This repository contains the source code and content for our band's official website. The site is built using [Hugo](https://gohugo.io/), a fast and modern static site generator, and uses Git LFS (Large File Storage) for managing media assets like images and PDFs.

The website aims to provide information about the band, upcoming events, music programs, galleries, and resources for band members and the community.

## Documentation Index

### Getting Started
- [Installing Hugo on Windows](HUGO_INSTALL.md) - Complete guide to installing and configuring Hugo
- [Installing Git on Windows](GIT_INSTALL.md) - Step-by-step instructions for setting up Git
- [Contributing Guide](CONTRIBUTING.md) - Guidelines for making changes to this website

## Quick Start Guide

1. **Prerequisites**
   - Install [Git](GIT_INSTALL.md) and [Hugo](HUGO_INSTALL.md)
   - Initialize Git LFS: `git lfs install`

2. **Clone the repository**
   ```bash
   git clone https://github.com/your-organization/band-webpage.git
   cd band-webpage
   ```

3. **Preview the site locally**
   ```bash
   hugo server -D
   ```
   
4. **Access the site**
   - Open your browser and go to http://localhost:1313/

5. **Make changes**
   - Edit content in the `content/` directory
   - Add images to the appropriate directories in `static/images/`
   - See [Contributing Guide](CONTRIBUTING.md) for more details

## Directory Structure

```
band-webpage/
├── archetypes/       # Templates for new content
├── assets/           # Files processed by Hugo Pipes (SCSS, JS)
├── config.toml       # Hugo configuration
├── content/          # Markdown content files
│   ├── events/       # Event announcements
│   ├── posts/        # News and updates
│   ├── programs/     # Band program information
│   └── ...
├── data/             # Site data files (YAML, JSON, TOML)
├── docs/             # Documentation (you are here)
├── layouts/          # HTML templates
│   ├── _default/     # Default templates
│   ├── partials/     # Reusable template parts
│   └── shortcodes/   # Custom shortcodes
├── public/           # Generated static site (not in repository)
├── resources/        # Cache directory for Hugo resources
├── static/           # Static files (images, CSS, JS)
│   ├── css/          # Custom CSS files
│   ├── images/       # Image files (managed by Git LFS)
│   └── js/           # JavaScript files
└── themes/           # Hugo themes
```

## Hugo Content Structure

- **_index.md** files define section pages
- Each content file begins with front matter (YAML, TOML, or JSON)
- Content is written in Markdown
- You can use shortcodes for complex elements

Example content file:
```markdown
---
title: "Spring Concert 2025"
date: 2025-03-15T19:30:00-05:00
draft: false
featured_image: "/images/spring-concert-2025.jpg"
---

Join us for our annual Spring Concert featuring...
```

## Contact and Support

For questions or issues with the website:
- **Technical Contact**: [webmaster@example.com](mailto:webmaster@example.com)
- **Content Updates**: [content@example.com](mailto:content@example.com)
- **Report Issues**: Please create an issue in the GitHub repository or contact the webmaster

For band-related inquiries:
- **General Information**: [info@example.com](mailto:info@example.com)
- **Director**: [director@example.com](mailto:director@example.com)
- **Phone**: (555) 123-4567

## License

This project and its content are copyright © 2025 Your Band Name. All rights reserved.


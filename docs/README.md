# Band Webpage Documentation

## Project Overview

This repository contains the source code and content for our band's official website. The site is built using [Hugo](https://gohugo.io/), a fast and modern static site generator. The website showcases information about the band, upcoming events, various band programs (including marching band, concert band, jazz band, and more), photo galleries, and resources for band members and the community.

## Documentation Structure

Our documentation is organized into the following files:

- **[README.md](README.md)** - This file, providing an overview of the project and documentation
- **[HUGO_INSTALL.md](HUGO_INSTALL.md)** - Step-by-step guide for installing and configuring Hugo
- **[GIT_INSTALL.md](GIT_INSTALL.md)** - Instructions for setting up Git and Git LFS on Windows
- **[CONTRIBUTING.md](CONTRIBUTING.md)** - Guidelines for contributing to the website, including content workflow and code standards

## Directory Structure

```
band-webpage/
├── archetypes/         # Templates for new content
│   └── default.md      # Default archetype
├── assets/             # Files processed by Hugo Pipes
├── config/             # Configuration directory
│   └── _default/       # Default configuration
│       └── menus.toml  # Menu configuration
├── content/            # Markdown content files
│   ├── _index.md       # Homepage content
│   ├── about/          # About the band section
│   │   └── _index.md   # About section landing page
│   ├── alumni/         # Alumni information
│   │   └── _index.md   # Alumni section landing page
│   ├── calendar/       # Event calendar
│   │   └── _index.md   # Calendar section landing page
│   ├── performances/   # Performance details
│   ├── photos/         # Photo galleries
│   │   └── _index.md   # Photos section landing page
│   ├── posts/          # News and updates
│   └── programs/       # Band program information
│       ├── _index.md   # Programs section landing page
│       ├── concert-band/
│       │   └── _index.md
│       ├── jazz-band/
│       │   └── _index.md
│       ├── marching-band/
│       │   └── _index.md
│       ├── middle-school/
│       │   └── _index.md
│       ├── wind-ensemble/
│       │   └── _index.md
│       └── winter-guard/
│           └── _index.md
├── data/               # Site data files
├── desired_images.csv  # Image asset tracking
├── docs/               # Documentation (you are here)
│   ├── CONTRIBUTING.md # Contribution guidelines
│   ├── GIT_INSTALL.md  # Git installation guide
│   ├── HUGO_INSTALL.md # Hugo installation guide
│   └── README.md       # This file
├── download_images.sh  # Image download script
├── hugo.toml           # Hugo configuration
├── i18n/               # Internationalization
├── layouts/            # HTML templates
├── public/             # Generated static site (not in repository)
├── raw_source/         # Original content source files
├── res/          # Cache directory for Hugo resources
│   └── _gen/          # Generated resources
├── static/             # Static files
│   └── images/         # Image files
│       ├── about/      # About section images
│       │   └── band-performance.jpg
│       ├── alumni/     # Alumni section images
│       ├── calendar/   # Calendar section images
│       │   └── featured-event.jpg
│       ├── main/       # Main website images
│       ├── photos/     # Photo gallery images
│       └── programs/   # Program-specific images
│           ├── concert-band/
│           ├── jazz-band/
│           │   └── featured-performance.jpg
│           ├── marching-band/
│           │   ├── featured-performance.jpg
│           │   ├── football-performance.jpg
│           │   └── parade-performance.jpg
│           ├── middle-school/
│           │   ├── concert-performance.jpg
│           │   └── marching-performance.jpg
│           ├── wind-ensemble/
│           └── winter-guard/
└── themes/             # Hugo themes
    └── ananke/         # Ananke theme
```

## Quick Start Guide

1. **Prerequisites**
   - Install [Git](GIT_INSTALL.md) with Git LFS support
   - Install [Hugo](HUGO_INSTALL.md) (extended version recommended)

2. **Clone the repository**
   ```bash
   git clone https://github.com/NordoniaBands/nordonia-band-site.git
   cd band-webpage
   ```

3. **Preview the site locally**
   ```bash
   hugo server -D
   ```
   
4. **Access the development server**
   - Open your browser and go to http://localhost:1313/

5. **Make changes**
   - Edit content in the `content/` directory (Markdown files)
   - Add images to the appropriate directories in `static/images/`
   - See [Contributing Guide](CONTRIBUTING.md) for detailed workflows

## Development Setup

### Content Creation

1. **Creating a new page**
   ```bash
   hugo new content/posts/my-new-post.md
   ```

2. **Adding images**
   - Place images in the appropriate subfolder under `static/images/`
   - Reference images in Markdown content using relative paths:
     ```markdown
     ![Image description](/images/programs/marching-band/parade-performance.jpg)
     ```

3. **Front Matter**
   Each content file begins with front matter in YAML format:
   ```yaml
   ---
   title: "Spring Concert 2025"
   date: 2025-04-05T19:30:00-05:00
   draft: false
   featured_image: "/images/programs/concert-band/spring-concert.jpg"
   ---
   ```

### Building for Production

To build the site for production deployment:

```bash
hugo --minify
```

The generated site will be in the `public/` directory, ready for deployment.

## Contact Information

For questions or issues with the website:
- **Technical Contact**: [webmaster@example.com](mailto:webmaster@example.com)
- **Content Updates**: [content@example.com](mailto:content@example.com)
- **Report Issues**: Create an issue in the GitHub repository

For band-related inquiries:
- **General Information**: [info@example.com](mailto:info@example.com)
- **Band Director**: [director@example.com](mailto:director@example.com)
- **Phone**: (555) 123-4567

## License

This project and its content are copyright © 2025 Your Band Name. All rights reserved.

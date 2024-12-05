# Vite + React + TailwindCSS Project Setup

This repository contains an automated setup script for creating a new React project using Vite as the build tool and TailwindCSS for styling.

## Prerequisites

Before running the setup script, make sure you have the following installed:

- Node.js (version 14 or higher)
- npm (Node Package Manager)

## Quick Start

1. Download the setup script:

```bash
curl -O https://raw.githubusercontent.com/applovervv/react-vite-auto/main/setup-react-vite.sh
```

2. Make the script executable:

```bash
chmod +x setup-react-vite.sh
```

3. Run the script with your project name:

```bash
./setup-react-vite.sh your-project-name
```

4. Navigate to your project directory and start the development server:

```bash
cd your-project-name
npm run dev
```

## What's Included

The setup script automatically configures:

- ⚡ Vite - Next Generation Frontend Tooling
- ⚛️ React - A JavaScript library for building user interfaces
- 🎨 TailwindCSS - A utility-first CSS framework
- 📦 PostCSS and Autoprefixer

## Project Structure

```
your-project-name/
├── node_modules/
├── public/
├── src/
│   ├── App.jsx
│   ├── index.css
│   └── main.jsx
├── .gitignore
├── index.html
├── package.json
├── postcss.config.js
├── tailwind.config.js
└── vite.config.js
```

## Available Scripts

In the project directory, you can run:

- `npm run dev` - Starts the development server
- `npm run build` - Builds the app for production
- `npm run preview` - Preview the production build locally

## Customization

### TailwindCSS Configuration

You can customize your TailwindCSS setup by modifying `tailwind.config.js`:

```javascript
/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      // Add your custom theme configuration here
    },
  },
  plugins: [
    // Add your plugins here
  ],
};
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [Vite](https://vitejs.dev/)
- [React](https://reactjs.org/)
- [TailwindCSS](https://tailwindcss.com/)

## Support

If you encounter any issues or have questions, please file an issue in the repository.

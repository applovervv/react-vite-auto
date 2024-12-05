#!/bin/bash

# Get project name as argument
if [ -z "$1" ]
  then
    echo "Please enter a project name!"
    echo "Usage: ./setup-react-vite.sh project-name"
    exit 1
fi

PROJECT_NAME=$1

# 1. Create Vite + React project
echo "🚀 Creating Vite + React project..."
npm create vite@latest $PROJECT_NAME -- --template react

# Move to project directory
cd $PROJECT_NAME

# 2. Install dependencies
echo "📦 Installing base dependencies..."
npm install 

# 3. Install and configure TailwindCSS
echo "🎨 Installing and configuring TailwindCSS..."
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# 4. Update Tailwind configuration file
echo "⚙️ Updating TailwindCSS configuration..."
cat > tailwind.config.js << EOL
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

# 5. Add Tailwind directives to index.css
echo "💅 Setting up CSS file..."
cat > src/index.css << EOL
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

# 6. Modify App.jsx with base template
echo "🎯 Setting up App.jsx file..."
cat > src/App.jsx << EOL
function App() {
  return (
    <div className="min-h-screen bg-gray-100 py-6 flex flex-col justify-center sm:py-12">
      <div className="relative py-3 sm:max-w-xl sm:mx-auto">
        <div className="relative px-4 py-10 bg-white shadow-lg sm:rounded-3xl sm:p-20">
          <div className="max-w-md mx-auto">
            <div className="divide-y divide-gray-200">
              <div className="py-8 text-base leading-6 space-y-4 text-gray-700 sm:text-lg sm:leading-7">
                <h1 className="text-3xl font-bold text-center mb-8">
                  Vite + React + TailwindCSS
                </h1>
                <p className="text-center">
                  Edit App.jsx to get started
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default App
EOL

# 7. Installation complete message
echo "✅ Installation complete!"
echo "🔥 To start your project, run the following commands:"
echo "cd $PROJECT_NAME"
echo "npm run dev"
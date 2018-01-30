# Sass Compile Template (Using Npm or Windows bat files)

Template created to help Windows users compile Sass files to specified project directories. 

## Table of contents
- [Tools Used](#tools-used)
- [Getting Started](#getting-started)
- [Folder Structure](#folder-structure)
- [Running compile with npm](#running-compile-with-npm)
- [Running compile with .bat](#running-compile-with-.bat)

## Tools Used
- [Nodejs](https://nodejs.org)
- [node-sass](https://github.com/sass/node-sass)

## Getting Started
---
1. [Install Nodejs](https://nodejs.org)
1. In Cli, Clone Repo
    ```
    git clone https://github.com/Kerryb3d/Windows-Node-Sass-Compile.git
    ```
1. From the `Windows-Node-Sass-Compile` directory, run
    ```
    npm install
    ```

## Folder Structure
---
```
src/
|── main
|   |── _base.css
|   |── _variables.css
|   |── main.css
└── compile_variables.scss
```
- "src/" is the main directory to house .scss files
- "compile_variables.scss" currently only contains text for a global comment header, to be used across all sass projects.
- "main" is simply a placeholder sass project directory.  Multiple projects can be created

## Running compile with npm
---

**Standard compile**
- From the `Windows-Node-Sass-Compile` directory, run
    ```
    npm run compile-main
    ```
**Compile with "--watch" option**
- From the `Windows-Node-Sass-Compile` directory, run
    ```
    npm run compile-main-watch
    ```

**Compile all projects**
- From the `Windows-Node-Sass-Compile` directory, run
    ```
    npm run compile-all
    ```

**Customize or add new compile project cmds (package.json)**
```json
"vars": {
    "cssOutputPath": "./dist/css/",
    "cssOptions": "--output-style compressed --source-map true --source-map-contents true --include-path node_modules"
},
"scripts": {
    "compile-main": "node-sass %npm_package_vars_cssOptions% ./src/main/main.scss %npm_package_vars_cssOutputPath%main.css",
    "compile-main-watch": "npm run main -- --watch",
    "compile-all": "npm run main"
},
```
- `"cssOutputPath"` is the directory where the css will be compiled too
- `"cssOptions"` customize parameter for node-sass
- `"compile-main"` compile the main sass project
- `"compile-main-watch"` watch for changes in main sass project
- `"compile-all"` compile all projects
## Running compile with .bat
---

**Standard compile (default directory "dist/css")**
- From the `Windows-Node-Sass-Compile` directory, double click `compile-main-sass.bat`

**Compile using custom directory**
- From the `Windows-Node-Sass-Compile` directory, run 
    ```
    compile-main-sass.bat "output=C:\development\projects"
    ```

**Compile using custom options**
- From the `Windows-Node-Sass-Compile` directory, run 
    ```
    compile-main-sass.bat "options=--watch"
    ```

**Customize or add new .bat project files**

Create new .bat files for projects
1. Using `"compile-main-sass.bat"` as a template, duplicate the file.
1. Rename the file to your naming convention.
1. Modify the cmd parameters
    ```
    set cssSrcPath=src\main
    set cssSrcName=main.scss
    set cssOutputPath=dist\css
    set cssOutputName=main.css
    ```
- `"cssSrcPath"` is the sass project directory
- `"cssSrcName"` is the name of the sass project .scss file
- `"cssOutputPath"` is the output directory for the css
- `"cssOutputName"` is the name of the compiled file
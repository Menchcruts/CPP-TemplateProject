# C++ Project Template

This is a lightweight and flexible C++ project template designed to kickstart development using **Premake**. It allows you to easily generate either **Visual Studio** or **CMake** project files depending on your workflow.

---

## 🔧 Features
- Organized project structure
- Premake5 build configuration
- Support for both Visual Studio and CMake
- Simple script-based setup

---

## 🚀 Getting Started

1. **Clone the template repository** (or use the "Use this template" button on GitHub to create your own copy).
2. Open a terminal and run one of the setup scripts inside the `Scripts/` directory.

### Example:
```bash
cd Scripts
./Setup-Linux-cmake.sh      # For CMake
```
> On Windows, use the `.bat` equivalents:
```bash
cd Scripts
./Setup-Windows-cmake.bat   # For Visual Studio
./Setup-Windows-vs2022.bat  # For CMake
```

## Changing Project Names
Changing project names is as simple as going into the `premake5.lua` of the project and changing the project variable to whatever name you want.

**Note:** if you change rename any folders, remember to change the path in the root `premake5.lua` file and any other project that depends on that project.

Please refer to the [Premake docs](https://premake.github.io/docs/).

## 📁 Project Structure
```
Cpp-TemplateProject/
├─ Core/
│  ├─ CoreProjectExample/
│  │  ├─ CoreProject/
│  │  ├─ Premake5.lua
├─ Dependencies/
├─ MainProject/
│  ├─ Premake5.lua
├─ premake-cmake/
├─ Scripts/
├─ Vendor/
├─ premake5.lua
```
### 📘 Directory Overview
* **Core/**: Contains reusable core libraries.
    * **CoreProjectExample/**: Example of a library setup. Each library has an outer folder (for build files) and an inner folder (`CoreProject/`) with the actual source.
    * `premake5.lua`: Premake configuration for the example library.

* **Dependencies/**: Placeholder for third-party dependencies (e.g., via Git submodules or external downloads). They are structured similarily to core libraries.

* **MainProject/**: Your primary application or executable target.
    * `premake5.lua`: Premake configuration for the main project.
* **premake-cmake/**: A CMake module that bridges CMake compatibility with Premake-generated builds.

* **Scripts/**: Contains helper scripts to generate project files (e.g., `Setup-Linux-cmake.sh`, `Setup-Windows-cmake.bat`).

* **Vendor/**: Stores Premake binaries and example scripts or boilerplate for reference.

* `premake5.lua` (root): Main workspace configuration file for Premake.

---

## 📦 Requirements
* C++ compiler (MSVC, GCC or Clang)
* CMake (if using CMake)
* (Optional) Visual Studio or CMake-compatible IDE

---

## 🧪 Customization
You can modify the `premake5.lua` scripts to:
* Add dependencies
* Change compiler/linker settings
* Configure additional projects or modules

---

## ✅ License
MIT License
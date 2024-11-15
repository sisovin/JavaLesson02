# Table of Contents

- [How to install jshell](#how-to-install-jshell)
  - [With PowerShell](#with-powershell)
  - [With Zsh](#with-zsh)
  - [With CMD prompt](#with-cmd-prompt)
- [Lesson 02: How to setup JDK](#lesson-02-how-to-setup-jdk)
  - [What is JDK in Java language?](#what-is-jdk-in-java-language)
  - [How to setup JDK?](#how-to-setup-jdk)
  - [Installing two Java Environment for two Java version 17 LTS and 21LTS](#installing-two-java-environment-for-two-java-version-17-lts-and-21lts)
  - [The different between JDK and JRE](#the-different-between-jdk-and-jre)
  - [Configuring the JDK version to use in my Java project](#configuring-the-jdk-version-to-use-in-my-java-project)
  - [JDK Switch](#jdk-switch)
  - [How to configure this multi_JDK.bat script with CMD, PowerShell, Zsh user?](#how-to-configure-this-multi_jdkbat-script-with-cmd-powershell-zsh-user)


# How to install jshell

## With PowerShell

in the Microsoft.PowerShell_profile.ps1 writes this line in:
$Env:Path = "C:\Program Files\Microsoft\jdk-17.0.11.9-hotspot\bin;" + $Env:Path

## With Zsh

in the .zshrc, we have to write the corrected line for our .zshrc file:
export PATH="/C/Program Files/Microsoft/jdk-17.0.11.9-hotspot:$PATH"

## With CMD prompt

to test the jshell after add the env: JAVA_HOME=C:\Program Files\Microsoft\jdk-17.0.11.9-hotspot\
echo %JAVA_HOME%

:\Users\DELL>jshell
| Welcome to JShell -- Version 17.0.3.1
| For an introduction type: /help intro

jshell> System.out.println("Hello World")
Hello World

jshell> System.out.println("Navin Reddy, Telusko")
Navin Reddy, Telusko

jshell> 2+4
$3 ==> 6

jshell> 9-6
$4 ==> 3

jshell>

Please generate Command line in Java language.

```Java
public class CommandLineExample {
    public static void main(String[] args) {
        // Check if at least one argument is provided
        if (args.length > 0) {
            System.out.println("Arguments provided:");
            for (String arg : args) {
                System.out.println(arg);
            }
        } else {
            System.out.println("No arguments provided.");
        }
    }
}
```

# Lesson 02: How to setup JDK

## What is JDK in Java language?

The Java Development Kit (JDK) is a software development environment used for developing Java applications and applets. It includes the Java Runtime Environment (JRE), an interpreter/loader (Java), a compiler (javac), an archiver (jar), a documentation generator (Javadoc), and other tools needed for Java development.

## How to setup JDK?

To set up the JDK on a Windows machine, follow these steps:

1. **Download the JDK:**

   - Go to the [Oracle JDK download page](https://www.oracle.com/java/technologies/javase-downloads.html).
   - Download the appropriate version for your operating system.

2. **Install the JDK:**

   - Run the downloaded installer.
   - Follow the installation instructions.

3. **Set up the Environment Variables:**

   - Open the Start Menu and search for "Environment Variables".
   - Click on "Edit the system environment variables".
   - In the System Properties window, click on the "Environment Variables" button.
   - Under System Variables, click "New" and add a new variable:
     - **Variable name:** `JAVA_HOME`
     - **Variable value:** `C:\Program Files\Java\jdk-<version>` (replace `<version>` with the actual version number).
   - Find the `Path` variable in the System Variables section, select it, and click "Edit".
   - Click "New" and add `%JAVA_HOME%\bin`.

4. **Verify the Installation:**
   - Open Command Prompt.
   - Type `java -version` and press Enter. You should see the installed JDK version.
   - Type `javac -version` and press Enter. You should see the installed compiler version.

This completes the JDK setup on a Windows machine.

## Installing two Java Environment for two Java version 17 LTS and 21LTS

We can install multiple versions of the Java Development Kit (JDK) on the same machine, such as Java 17 LTS and Java 21 LTS. Here’s how you can manage multiple JDK versions on a Windows machine:

1. **Install Multiple JDK Versions:**

   - Download and install the desired JDK versions from the [Oracle JDK download page](https://www.oracle.com/java/technologies/javase-downloads.html) or other sources like [AdoptOpenJDK](https://adoptopenjdk.net/).
   - Install each JDK in a separate directory, for example:
     - `C:\Program Files\Java\jdk-17`
     - `C:\Program Files\Java\jdk-21`

2. **Set Up Environment Variables:**

   - Open the Start Menu and search for "Environment Variables".
   - Click on "Edit the system environment variables".
   - In the System Properties window, click on the "Environment Variables" button.
   - Under System Variables, click "New" and add a new variable for each JDK:
     - **Variable name:** `JAVA_HOME_17`
     - **Variable value:** `C:\Program Files\Java\jdk-17`
     - **Variable name:** `JAVA_HOME_21`
     - **Variable value:** `C:\Program Files\Java\jdk-21`
   - Modify the `Path` variable to include the desired JDK version. For example, to use JDK 17:
     - Find the `Path` variable in the System Variables section, select it, and click "Edit".
     - Add `%JAVA_HOME_17%\bin` to the list.
   - To switch to JDK 21, you can update the `Path` variable to include `%JAVA_HOME_21%\bin` instead.

3. **Switch Between JDK Versions:**
   - To switch between JDK versions, you can update the `JAVA_HOME` environment variable and the `Path` variable accordingly.
   - Alternatively, you can use a script to switch between versions. For example, create a batch file to set the environment variables for JDK 17:
     ```batch
     @echo off
     set JAVA_HOME=C:\Program Files\Java\jdk-17
     set PATH=%JAVA_HOME%\bin;%PATH%
     echo Switched to JDK 17
     ```
   - Create another batch file for JDK 21:
     ```batch
     @echo off
     set JAVA_HOME=C:\Program Files\Java\jdk-21
     set PATH=%JAVA_HOME%\bin;%PATH%
     echo Switched to JDK 21
     ```

By following these steps, you can manage and switch between multiple JDK versions on your Windows machine.

## The different between JDK and JRE

The Java Development Kit (JDK) and the Java Runtime Environment (JRE) are both essential components for Java development and execution, but they serve different purposes:

1. **JDK (Java Development Kit):**

   - **Purpose:** Used for developing Java applications.
   - **Components:** Includes the JRE, an interpreter/loader (Java), a compiler (javac), an archiver (jar), a documentation generator (Javadoc), and other tools needed for Java development.
   - **Usage:** Required by developers to write, compile, and debug Java applications.

2. **JRE (Java Runtime Environment):**
   - **Purpose:** Used for running Java applications.
   - **Components:** Includes the Java Virtual Machine (JVM), core libraries, and other components necessary to run Java applications.
   - **Usage:** Required by end-users to run Java applications but does not include development tools like the compiler and debugger.

In summary, the JDK is a superset of the JRE. The JDK includes everything the JRE has, plus additional tools for developing Java applications.

## Configuring the JDK version to use in my Java project

To configure the JDK version for your Java project in Visual Studio Code, follow these steps:

1. **Install the Java Extension Pack:**

   - Open Visual Studio Code.
   - Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window or by pressing `Ctrl+Shift+X`.
   - Search for "Java Extension Pack" and install it.

2. **Configure the JDK in Visual Studio Code:**

   - Open the Command Palette by pressing `Ctrl+Shift+P`.
   - Type `Java: Configure Java Runtime` and select it.
   - In the Java Configuration window, you can add or select the JDKs you have installed.
   - Click on `Add JDK` and navigate to the directory where your JDK is installed (e.g., `C:\Program Files\Java\jdk-17` or `C:\Program Files\Java\jdk-21`).
   - Set the JDK you want to use as the default by clicking on the `Set as Default` button next to the desired JDK version.

3. **Configure the JDK in `settings.json`:**

   - Open the Command Palette by pressing `Ctrl+Shift+P`.
   - Type `Preferences: Open Settings (JSON)` and select it.
   - Add or update the following settings in the `settings.json` file to specify the JDK version for your project:
     ```json
     {
       "java.home": "C:\\Program Files\\Java\\jdk-17",
       "java.configuration.runtimes": [
         {
           "name": "JavaSE-17",
           "path": "C:\\Program Files\\Java\\jdk-17"
         },
         {
           "name": "JavaSE-21",
           "path": "C:\\Program Files\\Java\\jdk-21"
         }
       ]
     }
     ```
   - Replace the paths with the actual paths to your JDK installations.

4. **Configure the JDK in `pom.xml` (for Maven projects):**

   - If you are using Maven, you can specify the JDK version in your `pom.xml` file:
     ```xml
     <properties>
       <maven.compiler.source>17</maven.compiler.source>
       <maven.compiler.target>17</maven.compiler.target>
     </properties>
     ```
   - Replace `17` with `21` if you want to use JDK 21.

5. **Configure the JDK in `build.gradle` (for Gradle projects):**
   - If you are using Gradle, you can specify the JDK version in your `build.gradle` file:
     ```groovy
     java {
         sourceCompatibility = JavaVersion.VERSION_17
         targetCompatibility = JavaVersion.VERSION_17
     }
     ```
   - Replace `VERSION_17` with `VERSION_21` if you want to use JDK 21.

By following these steps, you can configure the JDK version to use in your Java project in Visual Studio Code.

## JDK Switch

To create a batch script (`multi_JDK.bat`) that allows you to switch between different JDK versions, you can use the following structure. This script will prompt you to choose which JDK version to switch to:

```batch
@echo off
echo Select the JDK version to switch to:
echo 1. Microsoft JDK 17
echo 2. Oracle JDK 17
echo 3. Oracle JDK 21
set /p choice=Enter your choice (1, 2, or 3):

if "%choice%"=="1" (
    set JAVA_HOME=C:\Program Files\Microsoft\jdk-17.0.11.9-hotspot
    set PATH=%JAVA_HOME%\bin;%PATH%
    echo Switched to Microsoft JDK 17
) else if "%choice%"=="2" (
    set JAVA_HOME=C:\Program Files\Java\jdk-17
    set PATH=%JAVA_HOME%\bin;%PATH%
    echo Switched to Oracle JDK 17
) else if "%choice%"=="3" (
    set JAVA_HOME=C:\Program Files\Java\jdk-21
    set PATH=%JAVA_HOME%\bin;%PATH%
    echo Switched to Oracle JDK 21
) else (
    echo Invalid choice. No changes made.
)
pause
```

### Explanation:

1. **Prompt User for Choice:**
   - The script prompts the user to select which JDK version to switch to.
2. **Set Environment Variables Based on Choice:**

   - Depending on the user's choice, the script sets the `JAVA_HOME` and updates the `PATH` environment variable to point to the selected JDK version.

3. **Echo Confirmation:**

   - The script echoes a confirmation message indicating which JDK version has been switched to.

4. **Pause:**
   - The script pauses at the end to allow the user to see the confirmation message before the command prompt window closes.

Save this script as `multi_JDK.bat` and run it whenever you need to switch between different JDK versions.

## How to configure this multi_JDK.bat script with CMD, PowerShell, Zsh user?

To configure the `multi_JDK.bat` script for use with CMD, PowerShell, and Zsh, you need to create equivalent scripts for each shell environment. Here are the steps for each:

### CMD (Command Prompt)

The `multi_JDK.bat` script provided earlier is already suitable for CMD. You can run it directly in the Command Prompt.

### PowerShell

Create a PowerShell script (`multi_JDK.ps1`) with the following content:

```powershell
Write-Host "Select the JDK version to switch to:"
Write-Host "1. Microsoft JDK 17"
Write-Host "2. Oracle JDK 17"
Write-Host "3. Oracle JDK 21"
$choice = Read-Host "Enter your choice (1, 2, or 3)"

switch ($choice) {
    "1" {
        $env:JAVA_HOME = "C:\Program Files\Microsoft\jdk-17.0.11.9-hotspot"
        $env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
        Write-Host "Switched to Microsoft JDK 17"
    }
    "2" {
        $env:JAVA_HOME = "C:\Program Files\Java\jdk-17"
        $env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
        Write-Host "Switched to Oracle JDK 17"
    }
    "3" {
        $env:JAVA_HOME = "C:\Program Files\Java\jdk-21"
        $env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
        Write-Host "Switched to Oracle JDK 21"
    }
    default {
        Write-Host "Invalid choice. No changes made."
    }
}
```

### Zsh (on Windows using WSL or on macOS/Linux)

Create a Zsh script (`multi_JDK.sh`) with the following content:

```sh
#!/bin/zsh

echo "Select the JDK version to switch to:"
echo "1. Microsoft JDK 17"
echo "2. Oracle JDK 17"
echo "3. Oracle JDK 21"
read "choice?Enter your choice (1, 2, or 3): "

case $choice in
    1)
        export JAVA_HOME="/mnt/c/Program Files/Microsoft/jdk-17.0.11.9-hotspot"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Microsoft JDK 17"
        ;;
    2)
        export JAVA_HOME="/mnt/c/Program Files/Java/jdk-17"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Oracle JDK 17"
        ;;
    3)
        export JAVA_HOME="/mnt/c/Program Files/Java/jdk-21"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Oracle JDK 21"
        ;;
    *)
        echo "Invalid choice. No changes made."
        ;;
esac
```

### Running the Scripts

#### CMD

- Open Command Prompt.
- Navigate to the directory containing `multi_JDK.bat`.
- Run the script: `multi_JDK.bat`.

#### PowerShell

- Open PowerShell.
- Navigate to the directory containing `multi_JDK.ps1`.
- Run the script: `.\multi_JDK.ps1`.

#### Zsh

- Open a terminal with Zsh (e.g., WSL on Windows, Terminal on macOS/Linux).
- Navigate to the directory containing `multi_JDK.sh`.
- Make the script executable: `chmod +x multi_JDK.sh`.
- Run the script: `./multi_JDK.sh`.

By following these steps, you can configure and use the `multi_JDK` script in CMD, PowerShell, and Zsh environments.

To ensure the script works correctly in Git Bash with Zsh on Windows 11, you need to adjust the paths to use the Windows-style paths directly. Here is the corrected script:

```zsh
#!/bin/zsh

echo "Select the JDK version to switch to:"
echo "1. Microsoft JDK 17"
echo "2. Oracle JDK 17"
echo "3. Oracle JDK 21"
read "choice?Enter your choice (1, 2, or 3): "

case $choice in
    1)
        export JAVA_HOME="C:/Program Files/Microsoft/jdk-17.0.11.9-hotspot"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Microsoft JDK 17"
        ;;
    2)
        export JAVA_HOME="C:/Program Files/Java/jdk-17"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Oracle JDK 17"
        ;;
    3)
        export JAVA_HOME="C:/Program Files/Java/jdk-21"
        export PATH="$JAVA_HOME/bin:$PATH"
        echo "Switched to Oracle JDK 21"
        ;;
    *)
        echo "Invalid choice. No changes made."
        ;;
esac
```

### Explanation:

1. **Shebang Line:**

   - `#!/bin/zsh` specifies that the script should be run with Zsh.

2. **Echo Statements:**

   - Prompts the user to select the JDK version.

3. **Read User Input:**

   - `read "choice?Enter your choice (1, 2, or 3): "` reads the user's choice.

4. **Case Statement:**
   - Based on the user's choice, sets the `JAVA_HOME` and updates the `PATH` environment variable.
   - Uses Windows-style paths (`C:/Program Files/...`) which are compatible with Git Bash.

### Running the Script:

1. **Open Git Bash:**

   - Open Git Bash from the Start menu or a shortcut.

2. **Navigate to the Directory:**

   - Use the `cd` command to navigate to the directory where your script is located. For example:
     ```sh
     cd /c/Users/chien/PowerShell
     ```

3. **Make the Script Executable:**

   - Ensure the script has execute permissions:
     ```sh
     chmod +x multi_JDK.sh
     ```

4. **Run the Script:**
   - Execute the script:
     ```sh
     ./multi_JDK.sh
     ```

This should allow you to switch between different JDK versions using the script in Git Bash with Zsh on Windows 11.

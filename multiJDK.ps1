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
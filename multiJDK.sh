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
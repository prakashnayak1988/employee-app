#!/bin/bash

# === CONFIGURATION ===
TOMCAT_HOME="/usr/local/Cellar/tomcat/11.0.10/libexec"
WAR_NAME="employee-app-1.0.0.war"
WAR_SOURCE="target/$WAR_NAME"
APP_NAME="employee-app-1.0.0"

# === SCRIPT ===
echo "📦 Deploying $WAR_NAME to Tomcat..."

# Stop Tomcat
echo "🛑 Stopping Tomcat..."
$TOMCAT_HOME/bin/catalina stop
sleep 5

# Clean old exploded directory
echo "🧹 Cleaning old deployment..."
rm -rf $TOMCAT_HOME/webapps/$APP_NAME

# Copy new WAR
echo "📥 Copying new WAR..."
cp $WAR_SOURCE $TOMCAT_HOME/webapps/

# Start Tomcat
echo "🚀 Starting Tomcat..."
$TOMCAT_HOME/bin/catalina start

echo "✅ Deployment complete. Access your app at: http://localhost:8080/$APP_NAME/"

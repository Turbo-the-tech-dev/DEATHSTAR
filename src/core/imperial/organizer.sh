#!/bin/bash
# --- THE EWOK ORGANIZER ---
# Purpose: Sort files into categories for total organizational dominance.
# Usage: ./organizer.sh [directory_path]

TARGET_DIR=${1:-$HOME/Desktop}

echo "🛰️ DEATHSTAR: Scanning Sector: $TARGET_DIR"

# Create Imperial Folders
mkdir -p "$TARGET_DIR/Imperial_Docs" 
mkdir -p "$TARGET_DIR/Imperial_Images" 
mkdir -p "$TARGET_DIR/Imperial_Scripts"
mkdir -p "$TARGET_DIR/Imperial_Archives"

# Organize by Extension
echo "🧹 Sorting Documents..."
mv "$TARGET_DIR"/*.{pdf,doc,docx,txt,md} "$TARGET_DIR/Imperial_Docs/" 2>/dev/null

echo "🖼️ Sorting Visual Assets..."
mv "$TARGET_DIR"/*.{png,jpg,jpeg,gif,svg} "$TARGET_DIR/Imperial_Images/" 2>/dev/null

echo "💻 Sorting Imperial Code..."
mv "$TARGET_DIR"/*.{js,sh,py,html,css,json} "$TARGET_DIR/Imperial_Scripts/" 2>/dev/null

echo "📦 Archiving Compressed Data..."
mv "$TARGET_DIR"/*.{zip,tar,gz,rar} "$TARGET_DIR/Imperial_Archives/" 2>/dev/null

echo "✅ SECTOR ORGANIZED. THE GALAXY IS AT PEACE."

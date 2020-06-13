#!/usr/bin/env zsh

echo "Enter title : " 
read title
echo "Categories : "
read categories

# file name for post
filename_title=$(echo $title | awk '{print tolower($0)}' | sed 's/ /-/g' )
day=$(date '+%F')
filename="$day-$filename_title.markdown"
echo $filename

datestring=$(date '+%F %T +0000')

cat <<EOF > "_posts/$filename"
---
layout: post
title: $title 
date: $datestring
categories: $categories
---
EOF


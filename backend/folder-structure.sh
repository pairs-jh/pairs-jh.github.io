# This script is used to create the folder structure for the Pairs at JH project.
# For Advanced PAIRS@JH, all content here was created by ChatGPT.
# I'd whispered my intentions by labeling the script as "folder-structure.sh" to ensure clarity.
# And the rest is .git history.

pairs_at_jh/
├── backend/
│   ├── app.py
│   ├── students.json
│   ├── students.csv
│   ├── requirements.txt
│   └── render.yaml
└── frontend/
    ├── index.html
    └── render.yaml

#!/bin/bash

# Create the folder structure
mkdir -p pairs_at_jh/backend
mkdir -p pairs_at_jh/frontend

# Create backend files
touch pairs_at_jh/backend/app.py
touch pairs_at_jh/backend/students.json
touch pairs_at_jh/backend/students.csv
touch pairs_at_jh/backend/requirements.txt
touch pairs_at_jh/backend/render.yaml

# Create frontend files
touch pairs_at_jh/frontend/index.html
touch pairs_at_jh/frontend/render.yaml

# Print the folder structure
echo "Folder structure created:"
tree pairs_at_jh

# If tree command is not available, use ls
if ! command -v tree &> /dev/null; then
    echo "Tree command not found, using ls instead."
    ls -R pairs_at_jh
fi  

# Note: The tree command may not be available on all systems.
# You can install it using your package manager if needed.
# For example, on Ubuntu, you can install it using:
# sudo apt-get install tree         

# On macOS, you can install it using Homebrew:
# brew install tree     
# On Windows, you can use the Windows Subsystem for Linux (WSL) to run the script or install tree using Chocolatey:
# choco install tree        
# After running this script, you will have the following folder structure:
# pairs_at_jh/
# ├── backend/
# │   ├── app.py
# │   ├── students.json
# │   ├── students.csv
# │   ├── requirements.txt
# │   └── render.yaml
# └── frontend/
#     ├── index.html
#     └── render.yaml           

# You can then proceed to add your code to the respective files.    
# Note: The render.yaml files are placeholders for deployment configurations.
# You can customize them based on your deployment needs.
# The students.json and students.csv files are also placeholders for student data.
# You can populate them with actual data as needed. 

zip -r pairs_at_jh.zip pairs_at_jh/
# This will create a zip file of the entire folder structure for easy sharing or deployment.
# You can then upload this zip file to your preferred cloud storage or deployment platform.
# If you need to deploy the backend and frontend separately, you can use the render.yaml files
# to configure your deployment settings for each service.
# Make sure to test your deployment after uploading the zip file to ensure everything works as expected.        
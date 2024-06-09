#!/bin/bash

# Function to display a matrix-style welcome message
matrix_welcome() {
  echo -e "\033[32m"
  echo "WELCOME TO FBI" | toilet -f mono9 -F metal
  sleep 2
}

# Function to display a loading animation
loading() {
  echo -n "Loading"
  for i in {1..5}; do
    echo -n "."
    sleep 0.5
  done
  echo
}

# Welcome message with green text and matrix effect
clear
matrix_welcome
echo -e "\033[32mWELCOME TO TERMUX STEROIDS MADE BY EKOAHAMDUTIVNASTI\033[0m"
loading

# Update and upgrade Termux
echo -e "\033[32mUpdating and upgrading Termux...\033[0m"
pkg update -y && pkg upgrade -y

# Install required dependencies
echo -e "\033[32mInstalling required dependencies...\033[0m"
pkg install -y git curl wget vim nano toilet

# Maintain command history
HISTFILE=~/.bash_history
HISTSIZE=1000
HISTFILESIZE=2000
PROMPT_COMMAND='history -a'

# Change the prompt to ekoahamdutivnasti@fbi in red
echo -e "\033[32mChanging the prompt...\033[0m"
echo 'export PS1="\[\e[31m\]ekoahamdutivnasti@fbi \[\e[32m\]\$ "' >> ~/.bashrc
source ~/.bashrc

# Ask the user if they want to install Nethunter rootless
echo -e "\033[32mDo you also want to install Nethunter rootless? (Y/N)\033[0m"
read -r install_nethunter

if [[ "$install_nethunter" =~ ^[Yy]$ ]]; then
  echo -e "\033[32mStarting Nethunter rootless installation...\033[0m"
  curl -LO https://offs.ec/2MceZWr
  chmod +x 2MceZWr
  ./2MceZWr
  echo -e "\033[32mNethunter rootless installation complete.\033[0m"
else
  echo -e "\033[32mSkipping Nethunter rootless installation.\033[0m"
fi

# Script completion message
echo -e "\033[32mTermux setup complete. Enjoy your enhanced Termux experience!\033[0m"


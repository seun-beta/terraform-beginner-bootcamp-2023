#!/bin/bash

# Add alias to .bash_profile
echo 'alias tf="terraform"' >> ~/.bash_profile

# Apply changes to the current terminal session
source ~/.bash_profile

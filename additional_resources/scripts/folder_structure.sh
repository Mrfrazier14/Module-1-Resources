#!/bin/bash
cd $HOME &&
mkdir appacademy && 
cd appacademy && 
git clone https://github.com/appacademy/Module-1-Resources.git && 
mkdir \
w1 \
w1/d1 \
w1/d1/projects w1/d1/homework \
w1/d2 \
w1/d2/projects w1/d2/homework \
w1/d3 \
w1/d3/projects w1/d3/homework \
w1/d4 \
w1/d4/projects w1/d4/homework \
w1/d5 \
w1/d5/projects w1/d5/homework \
w2 \
w2/d1 \
w2/d1/projects w2/d1/homework \
w2/d2 \
w2/d2/projects w2/d2/homework \
w2/d3 \
w2/d3/projects w2/d3/homework \
w2/d4 \
w2/d4/projects w2/d4/homework \
w2/d5 \
w2/d5/projects w2/d5/homework \
w3 \
w3/d1 \
w3/d1/projects w3/d1/homework \
w3/d2 \
w3/d2/projects w3/d2/homework \
w3/d3 \
w3/d3/projects w3/d3/homework \
w3/d4 \
w3/d4/projects w3/d4/homework \
w3/d5 \
w3/d5/projects w3/d5/homework \

if [ $SHELL = '/bin/bash' ]; then
    if [ -e $HOME/.bash_profile ]; then
        BASHRC_IN_BASH_PROFILE=$(cat $HOME/.bash_profile | grep -c '\$HOME/.bashrc')
        if [ -e $HOME/.bashrc ] && [ $BASHRC_IN_BASH_PROFILE != 1 ]; then
            ALIAS_IN_START=$(cat $HOME/.bashrc | grep -c 'https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh')
            if [ $ALIAS_IN_START != 1 ]; then
                echo "alias aa_update='curl -s https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh | bash'" >> $HOME/.bashrc
                echo "Please restart your terminal"
            fi
        else
            echo "$HOME/.bash_profile"
            ALIAS_IN_START=$(cat $HOME/.bash_profile | grep -c 'https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh')
            if [ $ALIAS_IN_START != 1 ]; then
                echo "alias aa_update='curl -s https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh | bash'" >> $HOME/.bash_profile
                echo "Please restart your terminal"
            fi
        fi
        exit 0
    elif [ -e $HOME/.profile ]; then
        BASHRC_IN_PROFILE=$(cat $HOME/.profile | grep -c '\$HOME/.bashrc')
        if [ -e $HOME/.bashrc ] && [ $BASHRC_IN_PROFILE != 1 ]; then
            ALIAS_IN_START=$(cat $HOME/.bashrc | grep -c 'https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh')
            if [ $ALIAS_IN_START != 1 ]; then
                echo "alias aa_update='curl -s https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh | bash'" >> $HOME/.bashrc
                echo "Please restart your terminal"
            fi
        else
            ALIAS_IN_START=$(cat $HOME/.profile | grep -c 'https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh')
            if [ $ALIAS_IN_START != 1 ]; then
                echo "alias aa_update='curl -s https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh | bash'" >> $HOME/.profile
                echo "Please restart your terminal"
            fi
        fi
        exit 0;
    fi
elif [ $SHELL = '/bin/zsh' ]; then
    ALIAS_IN_START=$(cat $HOME/.zshrc | grep -c 'https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh')
    if [ $ALIAS_IN_START != 1 ]; then
        echo "alias aa_update='curl -s https://raw.githubusercontent.com/appacademy/Module-1-Resources/main/additional_resources/scripts/update.sh | bash'" >> $HOME/.zshrc
        echo "Please restart your terminal"
    fi
else
    echo "If you're on mac please run 'touch ~/.zshrc' otherwise run 'touch ~/.bashrc' and try again"
    exit 1;
fi

if [[ $(uname -a) == *"Darwin"* ]]; then # only apply on macOS
    # francinette
    alias francinette=/Users/anaqvi/francinette/tester.sh
    alias paco=/Users/anaqvi/francinette/tester.sh

    # set up and start docker
    alias init_docker=~/42toolbox/init_docker.sh

    # start VS Code
    alias code='open -a "Visual Studio Code"'

    # 42-ValgrindContainer
    alias install_valgrind='bash ~/42-ValgrindContainer/install'

    export PATH=$HOME/.brew/bin:$PATH
    PATH=$PATH:/Users/anaqvi
    PATH=$PATH:/Users/anaqvi/42-ValgrindContainer

fi
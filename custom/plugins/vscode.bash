export VSCODE_PYTHON_PROJECT_SETTINGS=~/.bash_it/custom/plugins/vscode_python_settings.json
export VSCODE_PYTHON_PROJECT_LAUNCH=~/.bash_it/custom/plugins/vscode_python_launch.json

function code4py() {

    touch "${PWD}/.envFile"

    projectvscode="${PWD}/.vscode"
    mkdir -p $projectvscode

    projectsettings="${projectvscode}/settings.json"
    projectlaunch="${projectvscode}/launch.json"

    if [ ! -f $projectsettings ]; then
        cp $VSCODE_PYTHON_PROJECT_SETTINGS $projectsettings
    fi

    if [ ! -f $projectlaunch ]; then
        cp $VSCODE_PYTHON_PROJECT_LAUNCH $projectlaunch
    fi

}


@ECHO *** DanishNXT 6.6.2020 ***
@ECHO ** Setting JupyterLab, please ensure you have JupyterLab through anaconda installed
@ECHO ** Please also ensure you are using Windows 10 / have curl installed

PAUSE

@ECHO Copying KeyboardShorts from GIT

CD C:\Users\%USERNAME%\.jupyter\lab\user-settings\@jupyterlab\shortcuts-extension\
curl -o shortcuts.jupyterlab-settings https://raw.githubusercontent.com/danishnxt/myTools/master/utils/shortcuts.jupyterlab-settings

@ECHO Installing Extensions

@ECHO Extension 1 of 3
jupyter labextension install @ryantam626/jupyterlab_sublime

@ECHO Extension 2 of 3
jupyter labextension install @aquirdturtle/collapsible_headings

@ECHO Extension 3 of 3
conda install -c conda-forge ipywidgets

@ECHO UPDATE CONDA TO LATEST - PLEASE CONFIRM WITH YES
conda update conda 


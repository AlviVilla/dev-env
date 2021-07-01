# dev-env
Tools and environment definitions for a local deployment. 

## Setup
### Environment
1. Install git on your system. Make sure you configure the user and email.
2. Add your SSH key to github [(instructions)](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account). This key will be used inside the VM to commit your work
3. Install VirtualBox on your system
4. Install Vagrant (https://www.vagrantup.com/docs/installation/)
6. Setup your dev env: git clone https://github.com/AlviVilla/dev-env.git'
7. Copy your SSH key to secure/id_rsa. **Make sure it's named "id_rsa"**

### IDE: Development with VSCode
In an effort to have the entire development team aligned, VSCode is proposed along with some appropiate extensions. Keep in mind the IDE is not strictly needed, and you could develop from any other IDE with similar capabilities or extensions. 
1. Install VSCode (https://code.visualstudio.com/)
   1. Add the following extensions to your VSCode installation (https://code.visualstudio.com/docs/editor/extension-gallery):
        * Vagrant (bbenoist.vagrant) 
        * Vagrantfile Support (marcostazi.VS-code-vagrantfile)
        * Python (ms-python.python)
        * Remote - SSH (ms-vscode-remote.remote-ssh)
        * Diff (fabiospampinato.vscode-diff)
        * Markdown All in One (yzhang.markdown-all-in-one)
        * AsciiDoc (joaompinto.asciidoctor-vscode)
        * EditorConfig for VS Code (editorconfig.editorconfig)
        * Docker (ms-azuretools.vscode-docker)
        * Terraform (mauve.terraform)
    1.(**Optional**) Further customize your VSCode with themes, if you so desire (https://marketplace.visualstudio.com/search?target=VSCode&category=Themes)
1. Go to VSCode's SSH - remote icon on VSCode Add a new ssh target: "ssh vagrant@192.168.33.10"

### Config and Final setup
1.  Before executing Vagrant, make sure you set the env variables for your name and email so vagrant can set up git for you. Please remember that VSCode has a handy integrated terminal you can use for this and during development. This step is only needed when you first setup the machine for the first time:
  * Using Powershell:
    * $env:VAGRANT_NAME = 'yourname'
    * $env:VAGRANT_EMAIL = 'your-github-email'
  * Using Bash
    * export VAGRANT_EMAIL='your-github-email'
    * export VAGRANT_NAME='yourname'

## Usage
To access the environment:
* If you want a SSH connection, use "vagrant ssh" (either on VSCode or on your prefered terminal, from this repo's folder).
* If you want a complete connection from vscode, select your configured target from the list in vscode. Password by default should be "vagrant"

Once you are inside, the first time you will need to "install remotely" the extensions. For that:
* Get into the SSH via VSCode
* Go to "Extensions" in vscode (located in the side panel)
* Some extensions will ask you to "install remotely". Cllick on them one by one, then (once all of them show "reload needed"), click on any of them to reload vscode

## Passing files between host & VM
The folder "synced" is linked to the VM, and you can use it to pass information between the VM and the host. (on the VM it's located at /home/vagrant/synced)

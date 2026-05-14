# Git_Workflow_Infrastructure
When creating a project, I've found it very laborious to always create the whole git workflow infrastructure. So with help of AI and my experiences, I wanted to create the perfect shell cmd, to reduce rendundancy.


[MAIN]  o-------o-------o-------o-------o--->
                       \             /
      [FEATURE]         o-------o---o 
                         \         /
      [HOTFIX]            o-------o


# How to use it:

## 🍎 macOS & 🐧 Linux (The Professional Way)
On Unix-based systems, the best practice is to move scripts to **/usr/local/bin**. This directory is specifically intended for user-created executables.

### 1. Rename and Move the scripts: (Bash)
Remove the .sh extension to make them feel like native commands.
sudo mv git_infrastructer_workflow.sh /usr/local/bin/git-init-flow
sudo mv manage_git.sh /usr/local/bin/git-manage



### 2. Make them executable: (Bash)
sudo chmod +x /usr/local/bin/git-init-flow /usr/local/bin/git-manage



### 3. Usage:
Now, from any folder, you can simply run:

git-init-flow <repo-url>

git-manage



## 🪟 Windows
On Windows, the easiest way is to add a folder containing your scripts to your System PATH.

### 1. Create a folder: Create a folder (e.g., **C:\scripts**) and move your .sh files there.

### 2. Add to PATH:

2.1 Search for "Edit the system environment variables" in the Start menu.

2.2 Click Environment Variables.

2.3 Under System variables, find Path, select it, and click Edit.

2.4 Click New and paste the path to your folder (C:\scripts).

### 3. Usage:
Open **Git Bash** (recommended) and run:

./git_infrastructer_workflow.sh

./manage_git.sh

*Note for Windows: If you use PowerShell, you may need to set an alias in your $PROFILE or run them via sh script_name.sh.*


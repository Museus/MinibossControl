# MinibossControl
This mod is used to change the proportions of miniboss chambers, allowing minibosses to be replaced with others. For example, Barge can be removed and replaced with Witches, which means that two doors would be Witches instead of one.

**This is not [leaderboard](https://speedrun.com/hades) legal, and any runs found to be using this mod _will_ be rejected** 

# Installation
To install MinibossControl, go the the [Releases](https://github.com/Museus/MinibossControl/releases) tab and download the latest .zip file. This will include the following files:

-   Mods/
    - MinibossControl/
    - ModUtil/
    - PrintUtil/
-   modimporter.py

[A video tutorial on how to install mods is available from PonyWarrior here](https://www.youtube.com/watch?v=YF0ij7MgOrI)

If you prefer text instructions, follow these steps:

If you don't already have Python installed, download it from [python.org](https://www.python.org/downloads/) and install it.

Once you have downloaded the `MinibossControl.zip` file, open up your Hades game directory. You can find this by launching Hades, then opening Task Manager, finding the Hades process, right-clicking on it, and selecting Open File Location.

Unzip the files into the `.../Hades/Content` folder. You should now have the standard folders such as `Scripts` and `Game` as well as a new folder called `Mods` and the `modimporter.py` script.

Run the `modimporter.py` script to install the mods, then load into your game. Whenever you want to uninstall the mods, simply delete the contents of the `Mods` folder, and run the `modimporter.py` script again.

# Configuration

You can set the Creation count for each miniboss in Tartarus, Asphodel, and Elysium, and remove Tiny Vermin. To change these options, you must update two files.

1. Open the `Mods` folder,  open the `MinibossControl` folder, then open `presets.lua` in Notepad. This file contains all the registered presets. Either change one of the existing ones to your desired counts, or create a new registered preset.

2. Open the `Mods` folder,  open the `MinibossControl` folder, then open `config.lua` in Notepad. This file tells MinibossControl which preset to load. Change the MinibossSetting value to the name of the preset you want to use.

# CustomRomCherryPicks
A shell script to cherry-pick commits from various custom Android OS roms so that I don't have to remember what I did yesterday. This was made with LineageOS as my base.

### Creating patches.
Creating patches is simple.

Using curl and the commit you'd like to make a patch with, issue the command: `curl <link to commit>.patch -o <name of patch>.patch`

For example, to get the patch included in the patches folder, I used: `curl https://github.com/DirtyUnicorns/android_system_core/commit/bfae7b9df51d4c6e6954bd795a145dc61d0ecaaa.patch -o Safetynet.patch`

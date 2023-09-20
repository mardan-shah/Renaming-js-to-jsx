
# Renaming .js to .jsx in PowerShell Script

This PowerShell script will rename all `.js` files to `.jsx` in a specified directory and its subdirectories.

## Instructions

1. **Open PowerShell**: Press `Win + X`, then select "Windows PowerShell" from the menu that appears.

2. **Change Directory**: Use the `cd` command to navigate to the directory where you want the script to run. For example:

   ```powershell
   cd D:\project\src
   ```

3. **Run the Script**: Execute the following command to run the script:

   ```powershell
   Get-ChildItem -Path . -File -Filter *.js -Recurse | ForEach-Object {
       $newName = $_.FullName -replace '\.js$', '.jsx'
       Rename-Item -Path $_.FullName -NewName $newName -Force
   }
   ```

   This command will rename all `.js` files in the current directory and its subdirectories.

4. **Enjoy**: The script will run, and all `.js` files will be renamed to `.jsx`.

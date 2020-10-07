IronScripter-2020-10

# A WIDE OPEN POWERSHELL CHALLENGE

https://ironscripter.us/a-wide-open-powershell-challenge/

Way back in the DOS world, there was a very handy way of displaying only directories.

`dir /ad /w`

In PowerShell, we can approximate this behavior with an expression like

`dir -directory | format-wide -autosize`

The Chairman has decided that you can do better and has commissioned this challenge. The basic part of the challenge will probably require an Intermediate skill level with PowerShell. Additional aspects of the challenge will probably require more advanced experience. But remember that all of this is subjective and that you should tackle as much of the challenge as you can.

## The Challenge

Your challenge is to devise a PowerShell way to display the immediate directory names in a wide format. That is to say, the top-level directories in a specified path. However, you should also include a detail attribute after the directory name with a value that indicates either the number of files in the immediate directory or the total size of the files. You might have a result like this which is showing the total number of files in the immediate directory.

`challenges [3]        DarkFaction [17]`

Let the user specify what type of value (count or size) to display. You can assign a default value if you’d like.

You might accomplish this task with a function and/or a custom formatting file.

## Extra Credit
Depending on your PowerShell scripting experience, the Chairman will be especially pleased if you can also address these items.

- Support a recursive option.
- Let the user specify a format value for the total size such as KB or MB.
- Give your command an alias of dw.
- Validate that the specified path is a FileSystem path.
- Write a custom object to the pipeline and not merely formatted data.
- Verify your solution works cross-platform.

As usual, submit links to your work and solutions in the comments and not code.

Good Scripting!

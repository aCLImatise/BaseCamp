class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme_rename.cwl
inputs:
- id: options
  doc: '<dir>+          full path of MEME Suite program output directory [-d <dest>]     destination
    directory; default: working directory  [-h]            print this message Copy
    HTML files from MEME Suite programs to files with distinct names to  make it easier
    to share them: <dest>/<program>.<last_dir>[.<arg_order_num>].html where <last_dir>
    is the last directory on the path, and <program> is the name of the MEME Suite
    program. If the <program>.<last_dir> combination is not unique then a number based
    on the argument order is added.'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- meme-rename

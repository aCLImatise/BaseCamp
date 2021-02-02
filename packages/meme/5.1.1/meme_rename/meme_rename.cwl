class: CommandLineTool
id: meme_rename.cwl
inputs:
- id: in_options
  doc: "<dir>+          full path of MEME Suite program output directory\n[-d <dest>]\
    \     destination directory; default: working directory\n[-h]            print\
    \ this message\nCopy HTML files from MEME Suite programs to files with distinct\
    \ names to\nmake it easier to share them:\n<dest>/<program>.<last_dir>[.<arg_order_num>].html\n\
    where <last_dir> is the last directory on the path, and <program> is the\nname\
    \ of the MEME Suite program. If the <program>.<last_dir> combination is\nnot unique\
    \ then a number based on the argument order is added.\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meme-rename

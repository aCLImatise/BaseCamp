class: CommandLineTool
id: podchecker.cwl
inputs:
- id: in_man
  doc: Print the manual page and exit.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_no_warnings
  doc: "Turn on/off printing of warnings. Repeating -warnings increases\nthe warning\
    \ level, i.e. more warnings are printed. Currently\nincreasing to level two causes\
    \ flagging of unescaped \"<,>\"\ncharacters."
  type: boolean
  inputBinding:
    prefix: -nowarnings
- id: in_file
  doc: "The pathname of a POD file to syntax-check (defaults to standard\ninput).\n"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- podchecker

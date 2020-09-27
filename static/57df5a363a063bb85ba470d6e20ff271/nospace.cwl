class: CommandLineTool
id: nospace.cwl
inputs:
- id: in_menu
  doc: "menu       [all] Remove whitespace (Values: all (all\nwhitespace); end (trailing\
    \ whitespace);\nexcess (multiple whitespace characters))"
  type: boolean
  inputBinding:
    prefix: -menu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nospace

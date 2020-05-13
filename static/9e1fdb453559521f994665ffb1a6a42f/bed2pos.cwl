class: CommandLineTool
id: bed2pos.pl.cwl
inputs:
- id: check
  doc: (Checks if the file is already peak/pos formatted)
  type: boolean
  inputBinding:
    prefix: -check
- id: unique
  doc: (Make peaks names unique by adding numbers to replicate names)
  type: boolean
  inputBinding:
    prefix: -unique
- id: o
  doc: '(Send output to this file, default: stdout)'
  type: File
  inputBinding:
    prefix: -o
- id: pos
  doc: (Send output to file with same name as input file with *.pos extension)
  type: boolean
  inputBinding:
    prefix: -pos
outputs: []
cwlVersion: v1.1
baseCommand:
- bed2pos.pl

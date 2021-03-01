class: CommandLineTool
id: chooseLines.cwl
inputs:
- id: in_number_choose_default
  doc: Number of lines to choose (default is all lines).
  type: long?
  inputBinding:
    prefix: -k
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chooseLines

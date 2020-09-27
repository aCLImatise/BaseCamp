class: CommandLineTool
id: ariba_flag.cwl
inputs:
- id: in_flag
  doc: Flag to be translated (an integer)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ariba
- flag

class: CommandLineTool
id: loganalyser.cwl
inputs:
- id: in_this_message
  doc: this message
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- loganalyser

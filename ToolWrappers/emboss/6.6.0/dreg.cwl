class: CommandLineTool
id: ../../../dreg.cwl
inputs:
- id: in_r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dreg

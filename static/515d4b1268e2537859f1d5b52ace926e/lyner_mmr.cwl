class: CommandLineTool
id: ../../../lyner_mmr.cwl
inputs:
- id: in_order
  doc: ''
  type: long
  inputBinding:
    prefix: --order
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- mmr

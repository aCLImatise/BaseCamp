class: CommandLineTool
id: lyner_mmr.cwl
inputs:
- id: in_order
  doc: "--help               Show this message and exit.\n"
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

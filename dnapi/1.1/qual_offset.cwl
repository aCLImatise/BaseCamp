class: CommandLineTool
id: ../../../qual_offset.py.cwl
inputs:
- id: fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qual_offset.py

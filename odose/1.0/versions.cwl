class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/versions.py.cwl
inputs:
- id: target
  doc: Target output file for version numbers
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- versions.py

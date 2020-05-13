class: CommandLineTool
id: stringMLST.py.cwl
inputs:
- id: profile
  doc: profileFile
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stringMLST.py

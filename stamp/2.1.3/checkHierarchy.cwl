class: CommandLineTool
id: checkHierarchy.py.cwl
inputs:
- id: stamp_profile
  doc: STAMP profile to evaluate
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkHierarchy.py

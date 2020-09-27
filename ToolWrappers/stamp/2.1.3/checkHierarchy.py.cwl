class: CommandLineTool
id: checkHierarchy.py.cwl
inputs:
- id: in_stamp_profile
  doc: STAMP profile to evaluate
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkHierarchy.py

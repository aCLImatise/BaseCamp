class: CommandLineTool
id: ../../../test_gromacs_py.py.cwl
inputs:
- id: copy
  doc: box using genconf
  type: string
  inputBinding:
    prefix: -Copy
outputs: []
cwlVersion: v1.1
baseCommand:
- test_gromacs_py.py

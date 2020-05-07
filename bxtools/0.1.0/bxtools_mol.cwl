class: CommandLineTool
id: bxtools_mol.cwl
inputs:
- id: verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- mol

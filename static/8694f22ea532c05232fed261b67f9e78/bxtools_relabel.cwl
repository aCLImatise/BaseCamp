class: CommandLineTool
id: bxtools_relabel.cwl
inputs:
- id: verbose
  doc: 'Select verbosity level (0-4). Default: 0 '
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- relabel

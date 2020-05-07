class: CommandLineTool
id: abyss_gc.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-gc

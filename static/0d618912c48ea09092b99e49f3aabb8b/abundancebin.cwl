class: CommandLineTool
id: abundancebin.cwl
inputs:
- id: recursive_classification
  doc: ']'
  type: boolean
  inputBinding:
    prefix: -RECURSIVE_CLASSIFICATION
outputs: []
cwlVersion: v1.1
baseCommand:
- abundancebin

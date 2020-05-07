class: CommandLineTool
id: uniqueMerCount.cwl
inputs:
- id: sorted_mer_list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- uniqueMerCount

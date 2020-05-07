class: CommandLineTool
id: nf_core_list_filter keywords.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filter_keywords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- list
- filter keywords

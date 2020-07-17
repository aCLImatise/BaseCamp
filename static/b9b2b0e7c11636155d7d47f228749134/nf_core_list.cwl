class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nf_core_list.cwl
inputs:
- id: sort
  doc: '[release|pulled|name|stars] How to sort listed pipelines'
  type: boolean
  inputBinding:
    prefix: --sort
- id: json
  doc: Print full output as JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: filter_keywords
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- list

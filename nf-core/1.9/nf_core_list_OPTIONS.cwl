class: CommandLineTool
id: nf_core_list_OPTIONS.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- list
- OPTIONS

class: CommandLineTool
id: nf_core_list.cwl
inputs:
- id: in_sort
  doc: "[release|pulled|name|stars]\nHow to sort listed pipelines"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_json
  doc: Print full output as JSON
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_filter_keywords
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nf-core
- list

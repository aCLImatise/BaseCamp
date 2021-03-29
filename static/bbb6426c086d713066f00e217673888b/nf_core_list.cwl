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
- id: in_show_archived
  doc: Print archived workflows
  type: boolean?
  inputBinding:
    prefix: --show-archived
- id: in_filter_keywords
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- list

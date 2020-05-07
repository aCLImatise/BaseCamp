class: CommandLineTool
id: enasearch_get_run_fields.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- get_run_fields

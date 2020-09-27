class: CommandLineTool
id: nf_core_licences.cwl
inputs:
- id: in_json
  doc: Print output in JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: in_pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nf-core
- licences

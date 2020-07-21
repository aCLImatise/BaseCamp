class: CommandLineTool
id: ../../../nf_core_licences.cwl
inputs:
- id: json
  doc: Print output in JSON
  type: boolean
  inputBinding:
    prefix: --json
- id: pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- licences

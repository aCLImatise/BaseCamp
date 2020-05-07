class: CommandLineTool
id: nf_core_licences_OPTIONS_pipeline name.cwl
inputs:
- id: json
  doc: Print output in JSON
  type: boolean
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- licences
- OPTIONS
- pipeline name

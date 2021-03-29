class: CommandLineTool
id: nf_core_schema_validate.cwl
inputs:
- id: in_pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_json_params_file
  doc: ''
  type: File
  inputBinding:
    position: 1
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
- schema
- validate

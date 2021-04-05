class: CommandLineTool
id: nf_core_schema_lint.cwl
inputs:
- id: in_pipeline_schema
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
  dockerPull: quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- schema
- lint

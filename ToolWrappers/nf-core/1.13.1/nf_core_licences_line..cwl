class: CommandLineTool
id: nf_core_licences_line..cwl
inputs:
- id: in_nf_core
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_licences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pipeline_name
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- licences
- line.

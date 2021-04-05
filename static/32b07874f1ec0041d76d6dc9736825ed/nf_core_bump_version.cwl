class: CommandLineTool
id: nf_core_bump_version.cwl
inputs:
- id: in_next_flow
  doc: Bump required nextflow version instead of pipeline version
  type: boolean?
  inputBinding:
    prefix: --nextflow
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_new_version
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- bump-version

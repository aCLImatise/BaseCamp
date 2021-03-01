class: CommandLineTool
id: nf_core_modules_install.cwl
inputs:
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_tool_name
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
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- modules
- install

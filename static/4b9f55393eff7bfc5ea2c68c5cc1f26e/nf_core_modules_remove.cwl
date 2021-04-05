class: CommandLineTool
id: nf_core_modules_remove.cwl
inputs:
- id: in_tool
  doc: or <tool/subtool>
  type: string?
  inputBinding:
    prefix: --tool
- id: in_pipeline_directory
  doc: ''
  type: Directory
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
- modules
- remove

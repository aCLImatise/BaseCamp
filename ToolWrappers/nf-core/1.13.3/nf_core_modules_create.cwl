class: CommandLineTool
id: nf_core_modules_create.cwl
inputs:
- id: in_tool
  doc: or <tool/subtool>
  type: string?
  inputBinding:
    prefix: --tool
- id: in_author
  doc: Module author's GitHub username
  type: string?
  inputBinding:
    prefix: --author
- id: in_label
  doc: Standard resource label for process
  type: string?
  inputBinding:
    prefix: --label
- id: in_meta
  doc: Use Groovy meta map for sample information
  type: boolean?
  inputBinding:
    prefix: --meta
- id: in_no_meta
  doc: Don't use meta map for sample information
  type: boolean?
  inputBinding:
    prefix: --no-meta
- id: in_force
  doc: Overwrite any files if they already exist
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_directory
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
- create

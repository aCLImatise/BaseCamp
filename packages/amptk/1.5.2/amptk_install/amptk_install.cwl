class: CommandLineTool
id: amptk_install.cwl
inputs:
- id: in_install_databases_choices
  doc: 'Install Databases. Choices: ITS, 16S, LSU, COI'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_local
  doc: Use local downloads.json instead of github version
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_force
  doc: Over-write existing databases
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_arguments
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
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- install

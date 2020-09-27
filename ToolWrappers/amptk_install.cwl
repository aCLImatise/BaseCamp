class: CommandLineTool
id: amptk_install.cwl
inputs:
- id: in_install_databases_choices
  doc: 'Install Databases. Choices: ITS, 16S, LSU, COI'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_force
  doc: Over-write existing databases
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- amptk
- install

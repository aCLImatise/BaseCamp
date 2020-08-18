class: CommandLineTool
id: ../../../omero_shell.cwl
inputs:
- id: login
  doc: Logins in and sets the 'client' variable
  type: boolean
  inputBinding:
    prefix: --login
- id: arg
  doc: Arguments for IPython.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- shell

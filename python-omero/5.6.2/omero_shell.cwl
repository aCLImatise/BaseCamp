class: CommandLineTool
id: omero_shell.cwl
inputs:
- id: arg
  doc: Arguments for IPython.
  type: string
  inputBinding:
    position: 0
- id: login
  doc: Logins in and sets the 'client' variable
  type: boolean
  inputBinding:
    prefix: --login
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- shell

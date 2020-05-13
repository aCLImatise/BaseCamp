class: CommandLineTool
id: omero_admin_deploy.cwl
inputs:
- id: file
  doc: Application descriptor. If not provided, a default will be used
  type: File
  inputBinding:
    position: 0
- id: targets
  doc: 'Targets within the application descriptor which  should  be activated. Common
    values are: "debug", "trace" '
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- admin
- deploy

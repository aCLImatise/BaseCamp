class: CommandLineTool
id: ../../../dx_docker_add_to_applet_applet.cwl
inputs:
- id: alternative_export
  doc: ''
  type: boolean
  inputBinding:
    prefix: --alternative_export
- id: dx_docker
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: add_to_applet
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: image
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: applet
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-docker
- add-to-applet
- applet

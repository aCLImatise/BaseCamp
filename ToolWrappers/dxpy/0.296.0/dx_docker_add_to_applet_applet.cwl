class: CommandLineTool
id: dx_docker_add_to_applet_applet.cwl
inputs:
- id: in_alternative_export
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --alternative_export
- id: in_dx_docker
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_add_to_applet
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_image
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_applet
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-docker
- add-to-applet
- applet

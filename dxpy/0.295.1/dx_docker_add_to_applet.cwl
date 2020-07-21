class: CommandLineTool
id: ../../../dx_docker_add_to_applet.cwl
inputs:
- id: alternative_export
  doc: "EXPERT ONLY: Use alternative method to export Docker image since Docker CLI\
    \ export sometimes doesn't create the root filesystem properly."
  type: boolean
  inputBinding:
    prefix: --alternative_export
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-docker
- add-to-applet

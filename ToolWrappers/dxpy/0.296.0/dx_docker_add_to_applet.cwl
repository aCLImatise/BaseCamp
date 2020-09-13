class: CommandLineTool
id: ../../../dx_docker_add_to_applet.cwl
inputs:
- id: in_alternative_export
  doc: "EXPERT ONLY: Use alternative method to export Docker\nimage since Docker CLI\
    \ export sometimes doesn't create\nthe root filesystem properly.\n"
  type: boolean
  inputBinding:
    prefix: --alternative_export
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-docker
- add-to-applet

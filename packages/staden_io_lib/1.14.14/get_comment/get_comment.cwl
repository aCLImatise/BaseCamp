class: CommandLineTool
id: get_comment.cwl
inputs:
- id: in_suppresses_display_fieldid
  doc: Suppresses display of field-ID
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_field
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0
cwlVersion: v1.1
baseCommand:
- get_comment

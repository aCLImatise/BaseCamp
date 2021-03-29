class: CommandLineTool
id: scf_update.cwl
inputs:
- id: in_v
  doc: ''
  type: string?
  inputBinding:
    prefix: -v
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0
cwlVersion: v1.1
baseCommand:
- scf_update

class: CommandLineTool
id: hash_sff.cwl
inputs:
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_sff_file
  doc: ''
  type: string
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
- hash_sff

class: CommandLineTool
id: hash_extract.cwl
inputs:
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -I
- id: in_hash_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0
cwlVersion: v1.1
baseCommand:
- hash_extract

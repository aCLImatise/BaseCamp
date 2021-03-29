class: CommandLineTool
id: srf_index_hash.cwl
inputs:
- id: in_check_existing_index
  doc: check an existing index, don't re-index
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_srf_file
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
- srf_index_hash

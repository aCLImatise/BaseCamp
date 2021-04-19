class: CommandLineTool
id: parsec_libraries_create_library.cwl
inputs:
- id: in_description
  doc: Optional data library description
  type: string?
  inputBinding:
    prefix: --description
- id: in_synopsis
  doc: Optional data library synopsis
  type: string?
  inputBinding:
    prefix: --synopsis
- id: in_name
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
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- libraries
- create_library

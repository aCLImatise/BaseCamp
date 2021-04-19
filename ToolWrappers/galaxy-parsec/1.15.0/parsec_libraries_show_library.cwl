class: CommandLineTool
id: parsec_libraries_show_library.cwl
inputs:
- id: in_contents
  doc: "whether to get contents of the library (rather than just the\nlibrary details)"
  type: boolean?
  inputBinding:
    prefix: --contents
- id: in_library_id
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
- show_library

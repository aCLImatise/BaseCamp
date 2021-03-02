class: CommandLineTool
id: msdiff.cwl
inputs:
- id: in_arg__set
  doc: "[ --precision ] arg (=9.9999999999999995e-07)\n: set floating point precision\
    \ for\ncomparing binary data"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_ignore_metadata_compare
  doc: "[ --ignore ]                       : ignore metadata (compare scan binary\n\
    data and important scan metadata only)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_filename_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msdiff

class: CommandLineTool
id: dadaist2_getdb_printed..cwl
inputs:
- id: in_list
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_dadaist_two_get_db
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.5--0
cwlVersion: v1.1
baseCommand:
- dadaist2-getdb
- printed.

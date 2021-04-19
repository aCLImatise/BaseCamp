class: CommandLineTool
id: parsec_tools_upload_file.cwl
inputs:
- id: in_db_key
  doc: (optional) genome dbkey
  type: string?
  inputBinding:
    prefix: --dbkey
- id: in_file_name
  doc: (optional) name of the new history dataset
  type: string?
  inputBinding:
    prefix: --file_name
- id: in_file_type
  doc: (optional) Galaxy datatype for the new dataset, default is
  type: string?
  inputBinding:
    prefix: --file_type
- id: in_to_posix_lines
  doc: "if ``True`` (the default), convert universal line endings\nto POSIX line endings.\
    \ Set to ``False`` when uploading a\ngzip, bz2 or zip archive containing a binary\
    \ file"
  type: boolean?
  inputBinding:
    prefix: --to_posix_lines
- id: in_auto
  doc: --space_to_tab    whether to convert spaces to tabs. Default is ``False``.
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
- tools
- upload_file

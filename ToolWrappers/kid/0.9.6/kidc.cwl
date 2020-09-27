class: CommandLineTool
id: kidc.cwl
inputs:
- id: in_force
  doc: Force compilation even if .pyc file already exists.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_source
  doc: "Generate .py source files along with .pyc files.\nThis is sometimes useful\
    \ for debugging."
  type: boolean
  inputBinding:
    prefix: --source
- id: in_strip_dest_dir
  doc: "Strips the supplied path from the beginning of source\nfilenames stored for\
    \ error messages in the generated\n.pyc files"
  type: File
  inputBinding:
    prefix: --strip-dest-dir
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kidc

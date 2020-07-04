class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kidc.cwl
inputs:
- id: force
  doc: Force compilation even if .pyc file already exists.
  type: boolean
  inputBinding:
    prefix: --force
- id: source
  doc: Generate .py source files along with .pyc files. This is sometimes useful for
    debugging.
  type: boolean
  inputBinding:
    prefix: --source
- id: strip_dest_dir
  doc: Strips the supplied path from the beginning of source filenames stored for
    error messages in the generated .pyc files
  type: string
  inputBinding:
    prefix: --strip-dest-dir
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kidc

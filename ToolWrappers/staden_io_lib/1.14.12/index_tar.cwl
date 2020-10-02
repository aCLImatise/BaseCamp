class: CommandLineTool
id: index_tar.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_tar_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- index_tar

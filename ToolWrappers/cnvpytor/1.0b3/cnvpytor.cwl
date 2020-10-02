class: CommandLineTool
id: cnvpytor.cwl
inputs:
- id: in_download
  doc: ''
  type: boolean
  inputBinding:
    prefix: -download
- id: in_root
  doc: ''
  type: string[]
  inputBinding:
    prefix: -root
- id: in_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cnvpytor

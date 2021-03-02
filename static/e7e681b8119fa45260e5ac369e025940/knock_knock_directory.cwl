class: CommandLineTool
id: knock_knock_directory.cwl
inputs:
- id: in_knock_knock
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- directory

class: CommandLineTool
id: specialk.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_reads_file
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
- specialk

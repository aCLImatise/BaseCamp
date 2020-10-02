class: CommandLineTool
id: randomgenome.sh.cwl
inputs:
- id: in_len
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
- randomgenome.sh

class: CommandLineTool
id: ../../../unicode2ascii.sh.cwl
inputs:
- id: in_in
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
- unicode2ascii.sh

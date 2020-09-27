class: CommandLineTool
id: bootstrap_run.sh.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bootstrap_run.sh

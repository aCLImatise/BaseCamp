class: CommandLineTool
id: splash_eval_counts.cwl
inputs:
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- splash
- eval-counts

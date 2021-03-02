class: CommandLineTool
id: splash_eval_reads_bam.cwl
inputs:
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_splash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_eval_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- eval-reads
- bam

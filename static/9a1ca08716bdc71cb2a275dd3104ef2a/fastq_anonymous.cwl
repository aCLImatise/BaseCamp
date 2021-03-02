class: CommandLineTool
id: fastq_anonymous.cwl
inputs:
- id: in_mask
  doc: Mask all nucleotides using N
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-anonymous

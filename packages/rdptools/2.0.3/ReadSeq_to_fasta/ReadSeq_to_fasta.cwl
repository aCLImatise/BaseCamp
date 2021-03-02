class: CommandLineTool
id: ReadSeq_to_fasta.cwl
inputs:
- id: in_mask
  doc: Mask sequence name indicating columns to drop
  type: string?
  inputBinding:
    prefix: --mask
- id: in_usage
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
- ReadSeq
- to-fasta

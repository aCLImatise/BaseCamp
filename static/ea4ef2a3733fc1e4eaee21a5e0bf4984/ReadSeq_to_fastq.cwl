class: CommandLineTool
id: ReadSeq_to_fastq.cwl
inputs:
- id: in_to_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_qual_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-fastq

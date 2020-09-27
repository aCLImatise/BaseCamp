class: CommandLineTool
id: rbt_fastq_split.cwl
inputs:
- id: in_chunks
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
- rbt
- fastq-split

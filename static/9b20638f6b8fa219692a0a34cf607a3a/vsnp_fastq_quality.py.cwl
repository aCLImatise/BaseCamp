class: CommandLineTool
id: vsnp_fastq_quality.py.cwl
inputs:
- id: in_read_one
  doc: 'Required: single read, R1 if Illumina read'
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: 'Required: R2 Illumina read'
  type: long?
  inputBinding:
    prefix: --read2
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
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
- vsnp_fastq_quality.py

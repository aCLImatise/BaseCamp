class: CommandLineTool
id: krocus_input_fastq.cwl
inputs:
- id: in_kroc_us
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_allele_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- krocus
- input_fastq

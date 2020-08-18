class: CommandLineTool
id: ../../../krocus_input_fastq.cwl
inputs:
- id: kroc_us
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: allele_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- krocus
- input_fastq

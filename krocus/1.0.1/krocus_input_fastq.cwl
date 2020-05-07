class: CommandLineTool
id: krocus_input_fastq.cwl
inputs:
- id: allele_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- krocus
- input_fastq

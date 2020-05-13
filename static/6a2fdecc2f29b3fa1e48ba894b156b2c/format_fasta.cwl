class: CommandLineTool
id: format_fasta.cwl
inputs:
- id: input_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --inputfasta
- id: output_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --outputfasta
outputs: []
cwlVersion: v1.1
baseCommand:
- format_fasta

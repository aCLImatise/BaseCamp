class: CommandLineTool
id: phyluce_assembly_get_fasta_lengths.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: csv
  doc: ''
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fasta_lengths

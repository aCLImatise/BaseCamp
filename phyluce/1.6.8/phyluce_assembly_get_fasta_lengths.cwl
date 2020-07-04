class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/phyluce_assembly_get_fasta_lengths.cwl
inputs:
- id: input
  doc: The fasta file to summarize
  type: string
  inputBinding:
    prefix: --input
- id: csv
  doc: Give output in CSV
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_fasta_lengths

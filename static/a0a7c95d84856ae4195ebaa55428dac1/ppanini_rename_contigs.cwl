class: CommandLineTool
id: ppanini_rename_contigs.cwl
inputs:
- id: input
  doc: fasta file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: fasta file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_rename_contigs

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/erase_annoying_sequences.py.cwl
inputs:
- id: input
  doc: Input FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output FASTA file of negative sequences
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- erase_annoying_sequences.py

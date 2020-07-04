class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/consensus.py.cwl
inputs:
- id: alignment
  doc: The aligned sequences, in FASTA format (but no multi-line sequences).
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- consensus.py

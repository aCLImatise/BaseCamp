class: CommandLineTool
id: ../../../make_fasta_from_fastg.py.cwl
inputs:
- id: graph
  doc: '(spades 3.50+) FASTG file to process [recommended: before_rr.fastg]'
  type: string
  inputBinding:
    prefix: --graph
- id: output
  doc: output file name for FASTA of cycles
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- make_fasta_from_fastg.py

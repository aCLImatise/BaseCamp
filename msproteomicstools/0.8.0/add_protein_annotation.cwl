class: CommandLineTool
id: add_protein_annotation.py.cwl
inputs:
- id: fast_a
  doc: A fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: in
  doc: A mProphet output file
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: A modified mProphet output file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- add_protein_annotation.py

class: CommandLineTool
id: proteins_not_in_library.py.cwl
inputs:
- id: fast_a
  doc: A fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: in
  doc: A csv file with the column ProteinName
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: A csv output file containing all proteins not in the csv file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- proteins_not_in_library.py

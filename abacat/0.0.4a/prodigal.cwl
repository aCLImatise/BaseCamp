class: CommandLineTool
id: prodigal.py.cwl
inputs:
- id: input
  doc: Input FASTA file or dir containing fasta files
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Path to output folder
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- prodigal.py

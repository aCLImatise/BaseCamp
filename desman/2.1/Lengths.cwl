class: CommandLineTool
id: Lengths.py.cwl
inputs:
- id: input_file
  doc: fasta file
  type: File
  inputBinding:
    prefix: --inputfile
outputs: []
cwlVersion: v1.1
baseCommand:
- Lengths.py

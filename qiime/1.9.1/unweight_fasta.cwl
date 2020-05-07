class: CommandLineTool
id: unweight_fasta.py.cwl
inputs:
- id: input_fast_a
  doc: the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta
- id: output_file
  doc: the output fasta filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_file
- id: label
  doc: 'sequence label used for all records. fasta label lines will look like: >label_423
    [REQUIRED]'
  type: string
  inputBinding:
    prefix: --label
outputs: []
cwlVersion: v1.1
baseCommand:
- unweight_fasta.py

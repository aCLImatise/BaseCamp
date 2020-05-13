class: CommandLineTool
id: splitchr.py_fasta_size.cwl
inputs:
- id: bed
  doc: ''
  type: string
  inputBinding:
    prefix: --bed
- id: reformat
  doc: ''
  type: boolean
  inputBinding:
    prefix: --reformat
outputs: []
cwlVersion: v1.1
baseCommand:
- splitchr.py
- fasta
- size

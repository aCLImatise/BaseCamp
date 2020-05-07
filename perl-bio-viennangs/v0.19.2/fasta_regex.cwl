class: CommandLineTool
id: fasta_regex.pl.cwl
inputs:
- id: motif
  doc: ''
  type: string
  inputBinding:
    prefix: --motif
- id: fa
  doc: ''
  type: File
  inputBinding:
    prefix: --fa
- id: name
  doc: ''
  type: string
  inputBinding:
    prefix: --name
- id: bed
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bed
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_regex.pl

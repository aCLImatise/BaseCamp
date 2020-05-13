class: CommandLineTool
id: slice_fasta_gff.cwl
inputs:
- id: slice_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: type
  doc: only look at features of particular type
  type: string
  inputBinding:
    prefix: --type
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta_gff

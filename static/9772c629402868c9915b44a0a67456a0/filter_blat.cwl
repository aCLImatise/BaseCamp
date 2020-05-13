class: CommandLineTool
id: filter_blat.cwl
inputs:
- id: validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contigs_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: min_contig
  doc: (=100)            minimum contigs
  type: string
  inputBinding:
    prefix: --min_contig
- id: similar
  doc: (=0.95)              similarity
  type: string
  inputBinding:
    prefix: --similar
- id: is_local
  doc: is local
  type: boolean
  inputBinding:
    prefix: --is_local
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_blat

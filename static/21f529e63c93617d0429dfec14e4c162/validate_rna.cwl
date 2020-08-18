class: CommandLineTool
id: ../../../validate_rna.cwl
inputs:
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
- id: complete_rate
  doc: (=0.8)         completeness
  type: string
  inputBinding:
    prefix: --complete_rate
- id: is_local
  doc: local align
  type: boolean
  inputBinding:
    prefix: --is_local
- id: validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_rna

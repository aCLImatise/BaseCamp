class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_blat.cwl
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
- id: is_local
  doc: is local
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
- filter_blat

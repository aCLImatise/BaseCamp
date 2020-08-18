class: CommandLineTool
id: ../../../validate_contigs_mummer.cwl
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
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_contigs_mummer

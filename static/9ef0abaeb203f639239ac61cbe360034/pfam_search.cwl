class: CommandLineTool
id: pfam_search.pl.cwl
inputs:
- id: pfam_scan_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: -fasta
- id: dir
  doc: ''
  type: Directory
  inputBinding:
    prefix: -dir
outputs: []
cwlVersion: v1.1
baseCommand:
- pfam_search.pl

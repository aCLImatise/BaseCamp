class: CommandLineTool
id: ../../../pfam_search.pl.cwl
inputs:
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
- id: pfam_scan_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pfam_search.pl

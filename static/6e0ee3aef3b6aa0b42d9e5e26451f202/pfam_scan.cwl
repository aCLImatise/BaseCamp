class: CommandLineTool
id: pfam_scan.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- pfam_scan.pl

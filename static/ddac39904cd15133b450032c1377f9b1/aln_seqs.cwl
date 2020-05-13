class: CommandLineTool
id: aln_seqs.pl.cwl
inputs:
- id: aln_seqs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: no_hash
  doc: names with prefix '#'
  type: string
  inputBinding:
    prefix: -no-hash
outputs: []
cwlVersion: v1.1
baseCommand:
- aln-seqs.pl

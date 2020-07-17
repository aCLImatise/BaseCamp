class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/aln_seqs.pl.cwl
inputs:
- id: man
  doc: documentation
  type: string
  inputBinding:
    prefix: --man
- id: sort
  doc: by number of sequences
  type: string
  inputBinding:
    prefix: --sort
- id: 'null'
  doc: file name from sequence names by \0
  type: string
  inputBinding:
    prefix: --null
- id: no_hash
  doc: names with prefix '#'
  type: string
  inputBinding:
    prefix: -no-hash
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- aln-seqs.pl

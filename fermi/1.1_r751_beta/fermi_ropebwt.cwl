class: CommandLineTool
id: fermi_ropebwt.cwl
inputs:
- id: rope_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq_gz
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: 'algorithm: bpr or bcr [bpr]'
  type: string
  inputBinding:
    prefix: -a
- id: r
  doc: max number of runs in leaves (bpr only) [512]
  type: long
  inputBinding:
    prefix: -r
- id: n
  doc: max number children per internal node (bpr only) [64]
  type: long
  inputBinding:
    prefix: -n
- id: o
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: f
  doc: temporary sequence file name (bcr only) [null]
  type: File
  inputBinding:
    prefix: -f
- id: v
  doc: verbose level (bcr only) [2]
  type: long
  inputBinding:
    prefix: -v
- id: b
  doc: binary output (5+3 runs starting after 4 bytes)
  type: boolean
  inputBinding:
    prefix: -b
- id: t
  doc: enable threading (bcr only)
  type: boolean
  inputBinding:
    prefix: -t
- id: f
  doc: skip forward strand
  type: boolean
  inputBinding:
    prefix: -F
- id: r
  doc: skip reverse strand
  type: boolean
  inputBinding:
    prefix: -R
- id: n
  doc: cut at ambiguous bases
  type: boolean
  inputBinding:
    prefix: -N
- id: o
  doc: suppress end trimming when forward==reverse
  type: boolean
  inputBinding:
    prefix: -O
- id: t
  doc: print the tree stdout (bpr only)
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- ropebwt

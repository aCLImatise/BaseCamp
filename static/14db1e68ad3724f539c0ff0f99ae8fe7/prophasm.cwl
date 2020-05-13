class: CommandLineTool
id: prophasm.cwl
inputs:
- id: compute
  doc: of f1 and f2
  type: long
  inputBinding:
    prefix: '- compute'
- id: compute
  doc: of f1 and f2, and subtract it from them
  type: long
  inputBinding:
    prefix: '- compute'
- id: re_assemble
  doc: to g1
  type: string
  inputBinding:
    prefix: '- re-assemble'
- id: k
  doc: K-mer size.
  type: long
  inputBinding:
    prefix: -k
- id: i
  doc: Input FASTA file (can be used multiple times).
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: Output FASTA file (if used, must be used as many times as -i).
  type: File
  inputBinding:
    prefix: -o
- id: x
  doc: Compute intersection, subtract it, save it.
  type: File
  inputBinding:
    prefix: -x
- id: s
  doc: Output file with k-mer statistics.
  type: File
  inputBinding:
    prefix: -s
- id: s
  doc: Silent mode.
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- prophasm

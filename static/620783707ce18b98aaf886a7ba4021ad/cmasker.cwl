class: CommandLineTool
id: cmasker.cwl
inputs:
- id: f
  doc: FASTA Input
  type: boolean
  inputBinding:
    prefix: -f
- id: j
  doc: Jellfish Database
  type: boolean
  inputBinding:
    prefix: -j
- id: o
  doc: Create OCC output
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: Normalize Value
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: RT Value for masking threshold
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: 'Strict mode: Mask the whole k-mer in the query sequence instead of the single
    nucleotide'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: Prefix for the outfiles
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: Suppress FASTA output
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cmasker

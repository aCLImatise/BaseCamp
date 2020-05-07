class: CommandLineTool
id: convert_qr.cwl
inputs:
- id: it
  doc: Input file from QuasiRecomb, usually 'quasispecies.fasta' for transmitter
  type: string
  inputBinding:
    prefix: --it
- id: ir
  doc: Input file from QuasiRecomb, usually 'quasispecies.fasta' for recipient
  type: string
  inputBinding:
    prefix: --ir
- id: o
  doc: Name of output file to write sequences to
  type: string
  inputBinding:
    prefix: -o
- id: prefix
  doc: Prefix to use in FASTA header (retains source prefixes if none provided)
  type: string
  inputBinding:
    prefix: --prefix
- id: mf
  doc: Minimum frequency required for keeping sequence
  type: long
  inputBinding:
    prefix: --mf
- id: l
  doc: Length of sequences have to be EXACTLY L
  type: long
  inputBinding:
    prefix: -L
- id: p
  doc: Translate sequences into protein sequences
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_qr

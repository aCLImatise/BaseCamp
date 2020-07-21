class: CommandLineTool
id: ../../../aln2fa.pl.cwl
inputs:
- id: man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: de_gap
  doc: Remove gaps from sequences
  type: boolean
  inputBinding:
    prefix: --degap
- id: input_dot_aln
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- aln2fa.pl

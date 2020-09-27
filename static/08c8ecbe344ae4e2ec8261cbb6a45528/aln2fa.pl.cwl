class: CommandLineTool
id: aln2fa.pl.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: in_verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_de_gap
  doc: Remove gaps from sequences
  type: boolean
  inputBinding:
    prefix: --degap
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aln2fa.pl

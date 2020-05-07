class: CommandLineTool
id: prokka_hamap_to_hmm.cwl
inputs:
- id: verbose
  doc: "!      Verbose progress (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: datadir
  doc: Path to downloaded HAMAP folder (ftp://ftp.expasy.org/databases/hamap/) (default
    '').
  type: string
  inputBinding:
    prefix: --datadir
- id: sep
  doc: Separator between EC/gene/product (default '~~~').
  type: string
  inputBinding:
    prefix: --sep
- id: blank
  doc: Replace empty EC/gene/product with this (default '').
  type: string
  inputBinding:
    prefix: --blank
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka-hamap_to_hmm

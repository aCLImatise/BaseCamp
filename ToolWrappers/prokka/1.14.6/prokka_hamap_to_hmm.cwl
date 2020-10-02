class: CommandLineTool
id: prokka_hamap_to_hmm.cwl
inputs:
- id: in_verbose
  doc: "!      Verbose progress (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_datadir
  doc: Path to downloaded HAMAP folder (ftp://ftp.expasy.org/databases/hamap/) (default
    '').
  type: File
  inputBinding:
    prefix: --datadir
- id: in_sep
  doc: Separator between EC/gene/product (default '~~~').
  type: string
  inputBinding:
    prefix: --sep
- id: in_blank
  doc: Replace empty EC/gene/product with this (default '').
  type: string
  inputBinding:
    prefix: --blank
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prokka-hamap_to_hmm

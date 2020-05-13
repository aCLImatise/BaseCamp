class: CommandLineTool
id: refseqsplit.py.cwl
inputs:
- id: file
  doc: read from FILE
  type: File
  inputBinding:
    prefix: --file
- id: dir
  doc: write files to DIR
  type: string
  inputBinding:
    prefix: --dir
- id: prefix
  doc: 'only take accession with prefix PFX (default: NC)'
  type: string
  inputBinding:
    prefix: --prefix
- id: t
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: t
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: v
  doc: increment output verbosity; may be specified multiple times
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- refseqsplit.py

class: CommandLineTool
id: refseqsplit.py.cwl
inputs:
- id: in_file
  doc: read from FILE
  type: File
  inputBinding:
    prefix: --file
- id: in_dir
  doc: write files to DIR
  type: string
  inputBinding:
    prefix: --dir
- id: in_prefix
  doc: 'only take accession with prefix PFX (default: NC)'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_allow_only_entries
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: in_forbid_entries_tax
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: in_increment_output_verbosity
  doc: "increment output verbosity; may be specified multiple\ntimes\n"
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refseqsplit.py

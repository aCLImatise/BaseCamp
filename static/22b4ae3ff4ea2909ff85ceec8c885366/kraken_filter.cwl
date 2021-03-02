class: CommandLineTool
id: kraken_filter.cwl
inputs:
- id: in_threshold
  doc: ''
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kraken-filter

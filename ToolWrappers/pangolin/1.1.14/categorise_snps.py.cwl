class: CommandLineTool
id: categorise_snps.py.cwl
inputs:
- id: in_metadata
  doc: ''
  type: string?
  inputBinding:
    prefix: --metadata
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- categorise_snps.py

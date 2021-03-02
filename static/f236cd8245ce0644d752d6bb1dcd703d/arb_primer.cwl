class: CommandLineTool
id: arb_primer.cwl
inputs:
- id: in_dbname
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_primer

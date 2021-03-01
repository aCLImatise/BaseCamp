class: CommandLineTool
id: dtc.cwl
inputs:
- id: in_min_sum
  doc: ''
  type: string?
  inputBinding:
    prefix: -minsum
- id: in_copyright
  doc: (2016) The Regents of the University of California
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dtc

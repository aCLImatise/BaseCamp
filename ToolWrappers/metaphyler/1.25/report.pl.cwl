class: CommandLineTool
id: report.pl.cwl
inputs:
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_profile
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_one
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- report.pl

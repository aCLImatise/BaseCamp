class: CommandLineTool
id: mergefastq_p.cwl
inputs:
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_separate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mate
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_pair
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
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mergefastq-p

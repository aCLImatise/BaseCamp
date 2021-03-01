class: CommandLineTool
id: hmmer2filtered_best.py.cwl
inputs:
- id: in_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmmer
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_generated
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_filtered
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_best
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmer2filtered_best.py

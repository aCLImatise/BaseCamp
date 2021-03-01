class: CommandLineTool
id: vcf2db.py.cwl
inputs:
- id: in_take
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_create
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gemini
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_compatible
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf2db.py

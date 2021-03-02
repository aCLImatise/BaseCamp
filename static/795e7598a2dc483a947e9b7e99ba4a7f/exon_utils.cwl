class: CommandLineTool
id: exon_utils.cwl
inputs:
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fetch
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_constitutive
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_exons
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- exon_utils

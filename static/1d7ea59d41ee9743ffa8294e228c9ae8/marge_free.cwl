class: CommandLineTool
id: marge_free.cwl
inputs:
- id: in_marge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_free
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_software
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_predict
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_regulated
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_genes
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_cis_regulatory
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_regions
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: in_human
  doc: ''
  type: string
  inputBinding:
    position: 14
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 15
- id: in_mouse_dot
  doc: ''
  type: string
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- marge
- free

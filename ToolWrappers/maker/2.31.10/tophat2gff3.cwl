class: CommandLineTool
id: tophat2gff3.cwl
inputs:
- id: in_description
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_conver_sts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_juc_tions
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: in_product_ed
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_top_hat
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
- tophat2gff3

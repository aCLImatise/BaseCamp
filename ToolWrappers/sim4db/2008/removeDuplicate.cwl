class: CommandLineTool
id: removeDuplicate.cwl
inputs:
- id: in_gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
- id: in_var_1
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_var_2
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- removeDuplicate

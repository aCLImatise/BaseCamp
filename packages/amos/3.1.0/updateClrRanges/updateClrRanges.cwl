class: CommandLineTool
id: updateClrRanges.cwl
inputs:
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seqname_do_tend_five_do_tend_three_dot_txt
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- updateClrRanges

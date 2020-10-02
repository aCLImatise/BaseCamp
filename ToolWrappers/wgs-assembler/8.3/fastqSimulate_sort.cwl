class: CommandLineTool
id: fastqSimulate_sort.cwl
inputs:
- id: in_o_two
  doc: ''
  type: long
  inputBinding:
    prefix: -o2
- id: in_o_one
  doc: ''
  type: long
  inputBinding:
    prefix: -o1
- id: in_i_two
  doc: ''
  type: long
  inputBinding:
    prefix: -i2
- id: in_i_one
  doc: ''
  type: long
  inputBinding:
    prefix: -i1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqSimulate-sort

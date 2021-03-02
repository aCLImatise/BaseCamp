class: CommandLineTool
id: samtools_0.1.18_depth.cwl
inputs:
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_var_1
  doc: ''
  type: string?
  inputBinding:
    prefix: -Q
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_bam_two_depth
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- depth

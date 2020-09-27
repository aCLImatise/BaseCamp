class: CommandLineTool
id: bam_merge.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_merge

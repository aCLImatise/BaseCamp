class: CommandLineTool
id: samtools_0.1.18_cat.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_in_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- cat

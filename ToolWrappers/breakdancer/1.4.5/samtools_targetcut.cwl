class: CommandLineTool
id: samtools_targetcut.cwl
inputs:
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_two
  doc: ''
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_zero
  doc: ''
  type: long?
  inputBinding:
    prefix: '-0'
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_q
  doc: ''
  type: long?
  inputBinding:
    prefix: -Q
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- targetcut

class: CommandLineTool
id: splicecomp.cwl
inputs:
- id: a
  doc: table A
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: table B
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: Output directory, default='splicecomp_out'
  type: string
  inputBinding:
    prefix: -o
- id: cc
  doc: Coverage cutoff, default=0
  type: string
  inputBinding:
    prefix: -cc
outputs: []
cwlVersion: v1.1
baseCommand:
- splicecomp

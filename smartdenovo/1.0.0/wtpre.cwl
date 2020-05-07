class: CommandLineTool
id: wtpre.cwl
inputs:
- id: o
  doc: Output of processed reads, [-]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: 'Keep all subreads in a well, default: the longest one'
  type: boolean
  inputBinding:
    prefix: -L
- id: j
  doc: Jack knife of read length, [0]
  type: long
  inputBinding:
    prefix: -J
- id: c
  doc: Clip <-c> bases at both ends, [0]
  type: long
  inputBinding:
    prefix: -c
- id: p
  doc: Change the read name into {"%s%012d", <-p>}, [pb]
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- wtpre

class: CommandLineTool
id: bwa_pemerge.cwl
inputs:
- id: read_1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: m
  doc: output merged reads only
  type: boolean
  inputBinding:
    prefix: -m
- id: u
  doc: output unmerged reads only
  type: boolean
  inputBinding:
    prefix: -u
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: t
  doc: minimum end overlap [10]
  type: long
  inputBinding:
    prefix: -T
- id: q
  doc: max sum of errors [70]
  type: long
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- pemerge

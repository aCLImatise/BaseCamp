class: CommandLineTool
id: ../../../fa2fq.cwl
inputs:
- id: paired
  doc: if the reads are paired-end in one file
  type: boolean
  inputBinding:
    prefix: --paired
- id: merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
- id: filter
  doc: filter out reads containing 'N'
  type: boolean
  inputBinding:
    prefix: --filter
- id: fq_two_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fa2fq

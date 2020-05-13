class: CommandLineTool
id: filterfa.cwl
inputs:
- id: tmp_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: paired
  doc: if the reads are paired-end
  type: boolean
  inputBinding:
    prefix: --paired
- id: merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
outputs: []
cwlVersion: v1.1
baseCommand:
- filterfa

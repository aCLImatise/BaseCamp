class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/purge_haplotigs_cov.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: h
  doc: ''
  type: long
  inputBinding:
    prefix: -h
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: j
  doc: ''
  type: string
  inputBinding:
    prefix: -j
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- cov

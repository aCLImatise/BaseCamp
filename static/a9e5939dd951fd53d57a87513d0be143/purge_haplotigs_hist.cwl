class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/purge_haplotigs_hist.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- hist

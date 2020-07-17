class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/purge_haplotigs_purge.cwl
inputs:
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- purge

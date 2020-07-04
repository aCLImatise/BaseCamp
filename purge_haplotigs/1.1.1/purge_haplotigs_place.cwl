class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/purge_haplotigs_place.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- place

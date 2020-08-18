class: CommandLineTool
id: ../../../purge_haplotigs_clip.cwl
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
- clip

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmfetch_key.cwl
inputs:
- id: hmm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmfetch
- key

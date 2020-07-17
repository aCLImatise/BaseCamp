class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmstat.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmstat

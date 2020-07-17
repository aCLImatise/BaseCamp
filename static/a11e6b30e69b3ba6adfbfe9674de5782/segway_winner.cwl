class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segway_winner.cwl
inputs:
- id: input_master
  doc: print input master file name
  type: boolean
  inputBinding:
    prefix: --input-master
- id: params
  doc: print parameters file name
  type: boolean
  inputBinding:
    prefix: --params
- id: copy
  doc: copy files to final winning file locations
  type: boolean
  inputBinding:
    prefix: --copy
- id: clobber
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --clobber
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- segway-winner

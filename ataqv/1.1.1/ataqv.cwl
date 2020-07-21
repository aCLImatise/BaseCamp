class: CommandLineTool
id: ../../../ataqv.cwl
inputs:
- id: fly
  doc: '2R 2L 3R 3L 4 '
  type: string
  inputBinding:
    position: 0
- id: worm
  doc: 'I II III IV V '
  type: string
  inputBinding:
    position: 0
- id: yeast
  doc: 'I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI '
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ataqv

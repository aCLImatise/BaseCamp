class: CommandLineTool
id: ataqv.cwl
inputs:
- id: fly
  doc: '2R 2L 3R 3L 4 '
  type: string
  inputBinding:
    position: 0
- id: human
  doc: '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 '
  type: string
  inputBinding:
    position: 1
- id: mouse
  doc: '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 '
  type: string
  inputBinding:
    position: 2
- id: rat
  doc: '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 '
  type: string
  inputBinding:
    position: 3
- id: worm
  doc: 'I II III IV V '
  type: string
  inputBinding:
    position: 4
- id: yeast
  doc: 'I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI '
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- ataqv

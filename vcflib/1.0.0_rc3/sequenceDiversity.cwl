class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequenceDiversity.cwl
inputs:
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: one_dot
  doc: seqid
  type: string
  inputBinding:
    position: 0
- id: two_dot
  doc: start of window
  type: string
  inputBinding:
    position: 1
- id: three_dot
  doc: 'end of window  '
  type: string
  inputBinding:
    position: 2
- id: four_dot
  doc: 'pi             '
  type: string
  inputBinding:
    position: 3
- id: five_dot
  doc: 'eHH            '
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenceDiversity

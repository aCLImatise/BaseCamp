class: CommandLineTool
id: ../../../bigWigAverageOverBed.cwl
inputs:
- id: minmax
  doc: '- include two additional columns containing the min and max observed in the
    area.'
  type: boolean
  inputBinding:
    prefix: -minMax
- id: in_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigAverageOverBed

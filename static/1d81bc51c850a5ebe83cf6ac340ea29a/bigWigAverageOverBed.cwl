class: CommandLineTool
id: bigWigAverageOverBed.cwl
inputs:
- id: in_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: include
  doc: additional columns containing the min and max observed in the area.
  type: string
  inputBinding:
    prefix: '- include'
outputs: []
cwlVersion: v1.1
baseCommand:
- bigWigAverageOverBed

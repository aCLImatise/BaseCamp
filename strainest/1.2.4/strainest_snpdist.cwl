class: CommandLineTool
id: ../../../strainest_snpdist.cwl
inputs:
- id: snp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dist
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hist
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- strainest
- snpdist

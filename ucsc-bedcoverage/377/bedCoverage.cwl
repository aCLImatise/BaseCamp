class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedCoverage.cwl
inputs:
- id: restrict
  doc: Restrict to parts in restrict.bed
  type: string
  inputBinding:
    prefix: -restrict
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedCoverage

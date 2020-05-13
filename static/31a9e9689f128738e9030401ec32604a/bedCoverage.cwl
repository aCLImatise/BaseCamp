class: CommandLineTool
id: bedCoverage.cwl
inputs:
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
- id: restrict
  doc: Restrict to parts in restrict.bed
  type: string
  inputBinding:
    prefix: -restrict
outputs: []
cwlVersion: v1.1
baseCommand:
- bedCoverage

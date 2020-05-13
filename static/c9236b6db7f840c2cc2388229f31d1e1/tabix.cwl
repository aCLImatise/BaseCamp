class: CommandLineTool
id: tabix.cwl
inputs:
- id: h
  doc: print only the header lines
  type: boolean
  inputBinding:
    prefix: -H
- id: l
  doc: list chromosome names
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: force to overwrite the index
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- tabix

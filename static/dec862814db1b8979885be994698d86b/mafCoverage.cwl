class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafCoverage.cwl
inputs:
- id: restrict
  doc: Restrict to parts in restrict.bed
  type: string
  inputBinding:
    prefix: -restrict
- id: count
  doc: 'Number of matching species to count coverage. Default = 3 '
  type: string
  inputBinding:
    prefix: -count
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafCoverage

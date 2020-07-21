class: CommandLineTool
id: ../../../gsort_GENOME.cwl
inputs:
- id: chromosome_mappings
  doc: ''
  type: string
  inputBinding:
    prefix: --chromosomemappings
- id: memory
  doc: ''
  type: string
  inputBinding:
    prefix: --memory
- id: parent
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parent
- id: g_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gsort
- GENOME

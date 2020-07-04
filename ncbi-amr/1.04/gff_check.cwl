class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gff_check.cwl
inputs:
- id: qc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -qc
- id: verbose
  doc: ''
  type: string
  inputBinding:
    prefix: -verbose
- id: no_progress
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noprogress
- id: profile
  doc: ''
  type: boolean
  inputBinding:
    prefix: -profile
- id: seed
  doc: ''
  type: string
  inputBinding:
    prefix: -seed
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: -threads
- id: gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gff_check

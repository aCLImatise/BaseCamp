class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta2parts.cwl
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
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parts_max
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2parts

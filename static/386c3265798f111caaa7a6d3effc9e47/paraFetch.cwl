class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/paraFetch.cwl
inputs:
- id: newer
  doc: only download a file if it is newer than the version we already have.
  type: boolean
  inputBinding:
    prefix: -newer
- id: progress
  doc: Show progress of download.
  type: boolean
  inputBinding:
    prefix: -progress
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- paraFetch

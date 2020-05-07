class: CommandLineTool
id: paraFetch.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- paraFetch

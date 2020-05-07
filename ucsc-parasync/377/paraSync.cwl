class: CommandLineTool
id: paraSync.cwl
inputs:
- id: a
  doc: ='ext1,ext2'  means accept only files with ext1 or ext2
  type: boolean
  inputBinding:
    prefix: -A
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
- paraSync

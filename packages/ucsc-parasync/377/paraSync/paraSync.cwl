class: CommandLineTool
id: paraSync.cwl
inputs:
- id: in_means_accept_files
  doc: ='ext1,ext2'  means accept only files with ext1 or ext2
  type: boolean
  inputBinding:
    prefix: -A
- id: in_newer
  doc: only download a file if it is newer than the version we already have.
  type: boolean
  inputBinding:
    prefix: -newer
- id: in_progress
  doc: Show progress of download.
  type: boolean
  inputBinding:
    prefix: -progress
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_connections
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- paraSync

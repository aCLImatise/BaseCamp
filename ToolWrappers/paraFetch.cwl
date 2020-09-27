class: CommandLineTool
id: paraFetch.cwl
inputs:
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
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_r
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_optional_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 4
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
- id: in_specified
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
- paraFetch

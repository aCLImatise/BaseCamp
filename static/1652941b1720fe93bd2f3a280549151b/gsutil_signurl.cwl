class: CommandLineTool
id: gsutil_signurl.cwl
inputs:
- id: keystore_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- signurl

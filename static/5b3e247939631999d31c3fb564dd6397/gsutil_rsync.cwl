class: CommandLineTool
id: ../../../gsutil_rsync.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -U
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- rsync

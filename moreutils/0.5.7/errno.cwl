class: CommandLineTool
id: errno.cwl
inputs:
- id: keyword
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lss
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lsS
- id: list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list
- id: search
  doc: ''
  type: boolean
  inputBinding:
    prefix: --search
- id: search_all_locales
  doc: ''
  type: boolean
  inputBinding:
    prefix: --search-all-locales
outputs: []
cwlVersion: v1.1
baseCommand:
- errno

class: CommandLineTool
id: errno.cwl
inputs:
- id: in_search_all_locales
  doc: ''
  type: boolean
  inputBinding:
    prefix: --search-all-locales
- id: in_search
  doc: ''
  type: boolean
  inputBinding:
    prefix: --search
- id: in_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list
- id: in_lss
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lsS
- id: in_keyword
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- errno

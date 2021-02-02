class: CommandLineTool
id: kcpolymgr.cwl
inputs:
- id: in_otr
  doc: ''
  type: boolean
  inputBinding:
    prefix: -otr
- id: in_check
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_clear
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_copy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dump
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_bulk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_import
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_inform
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_load
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove_bulk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set_bulk
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
- kcpolymgr

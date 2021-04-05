class: CommandLineTool
id: kttimedmgr.cwl
inputs:
- id: in_otr
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -otr
- id: in_bgs_inform
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- id: in_recover
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vacuum
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kyototycoon:20170410--h896b458_0
cwlVersion: v1.1
baseCommand:
- kttimedmgr

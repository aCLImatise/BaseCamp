class: CommandLineTool
id: kcutilmgr.cwl
inputs:
- id: in_ic
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -ic
- id: in_alt
  doc: ''
  type: string?
  inputBinding:
    prefix: -alt
- id: in_key
  doc: ''
  type: string?
  inputBinding:
    prefix: -key
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_cip_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_comp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_conf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_enc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_regex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pattern
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kcutilmgr

class: CommandLineTool
id: iCount_group_sites.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_i_count
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_group
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sites_grouped
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sites
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- group
- sites

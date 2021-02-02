class: CommandLineTool
id: HiLine_params_RESTRICTION_SITES.cwl
inputs:
- id: in_hi_line
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_params
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_restriction_sites
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HiLine
- params
- RESTRICTION_SITES

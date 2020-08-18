class: CommandLineTool
id: ../../../arb_replace.cwl
inputs:
- id: linemode_parse_line_separately
  doc: linemode, parse each line separately
  type: boolean
  inputBinding:
    prefix: -l
- id: linemode_parse_line_lines
  doc: linemode, parse each line separately, delete empty lines
  type: boolean
  inputBinding:
    prefix: -L
- id: patchmode_wildcards_allowed
  doc: patchmode, (no wildcards allowed, rightside<leftside)
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_replace

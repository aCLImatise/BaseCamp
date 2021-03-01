class: CommandLineTool
id: arb_replace.cwl
inputs:
- id: in_linemode_parse_line
  doc: linemode, parse each line separately
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_linemode_parse_lines
  doc: linemode, parse each line separately, delete empty lines
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_patchmode_wildcards_allowed
  doc: patchmode, (no wildcards allowed, rightside<leftside)
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_replace

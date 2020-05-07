class: CommandLineTool
id: arb_replace.cwl
inputs:
- id: l
  doc: linemode, parse each line separately
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: linemode, parse each line separately, delete empty lines
  type: boolean
  inputBinding:
    prefix: -L
- id: p
  doc: patchmode, (no wildcards allowed, rightside<leftside)
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_replace

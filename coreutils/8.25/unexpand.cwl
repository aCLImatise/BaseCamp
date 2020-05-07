class: CommandLineTool
id: unexpand.cwl
inputs:
- id: all
  doc: convert all blanks, instead of just initial blanks
  type: boolean
  inputBinding:
    prefix: --all
- id: first_only
  doc: convert only leading sequences of blanks (overrides -a)
  type: boolean
  inputBinding:
    prefix: --first-only
- id: tabs
  doc: have tabs N characters apart instead of 8 (enables -a)
  type: string
  inputBinding:
    prefix: --tabs
- id: tabs
  doc: use comma separated LIST of tab positions (enables -a)
  type: string
  inputBinding:
    prefix: --tabs
outputs: []
cwlVersion: v1.1
baseCommand:
- unexpand

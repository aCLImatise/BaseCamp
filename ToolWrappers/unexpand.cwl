class: CommandLineTool
id: unexpand.cwl
inputs:
- id: in_all
  doc: convert all blanks, instead of just initial blanks
  type: boolean
  inputBinding:
    prefix: --all
- id: in_first_only
  doc: convert only leading sequences of blanks (overrides -a)
  type: boolean
  inputBinding:
    prefix: --first-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unexpand

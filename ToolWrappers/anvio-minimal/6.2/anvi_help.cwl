class: CommandLineTool
id: anvi_help.cwl
inputs:
- id: in_requires
  doc: Restrict to programs that require this search term
  type: boolean
  inputBinding:
    prefix: --requires
- id: in_provides
  doc: Restrict to programs that provide this search term
  type: boolean
  inputBinding:
    prefix: --provides
- id: in_name
  doc: "Restrict to programs that contain this search term in\ntheir name"
  type: boolean
  inputBinding:
    prefix: --name
- id: in_report
  doc: "Which information would you like to be in the report?\nMess with this if you\
    \ are disappointed with the\ndefault. Possibles are Description, Tags, Requires,\n\
    Provides, Status, and Resources. Add multiple of them\nwith commas (no whitespace).\
    \ For example, if you\nwanted Description and Resources, you would put here\n\
    Description,Resources\n"
  type: string
  inputBinding:
    prefix: --report
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-help

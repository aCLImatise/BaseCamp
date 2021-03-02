class: CommandLineTool
id: anvi_help.cwl
inputs:
- id: in_requires
  doc: "Restrict to programs that require this search term\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --requires
- id: in_provides
  doc: "Restrict to programs that provide this search term\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --provides
- id: in_name
  doc: "Restrict to programs that contain this search term in\ntheir name (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_report
  doc: "Which information would you like to be in the report?\nMess with this if you\
    \ are disappointed with the\ndefault. Possibles are Description, Tags, Requires,\n\
    Provides, Status, and Resources. Add multiple of them\nwith commas (no whitespace).\
    \ For example, if you\nwanted Description and Resources, you would put here\n\
    Description,Resources (default: None)"
  type: string?
  inputBinding:
    prefix: --report
- id: in_search_term
  doc: "Find programs associated with this search term\n(optional) (default: ALL)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-help

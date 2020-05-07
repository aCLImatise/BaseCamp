class: CommandLineTool
id: anvi_help.cwl
inputs:
- id: search_term
  doc: Find programs associated with this search term. if you want all programs, use
    'ALL'
  type: string
  inputBinding:
    position: 0
- id: requires
  doc: Restrict to programs that require this search term
  type: boolean
  inputBinding:
    prefix: --requires
- id: provides
  doc: Restrict to programs that provide this search term
  type: boolean
  inputBinding:
    prefix: --provides
- id: name
  doc: Restrict to programs that contain this search term in their name
  type: boolean
  inputBinding:
    prefix: --name
- id: report
  doc: Which information would you like to be in the report? Mess with this if you
    are disappointed with the default. Possibles are Description, Tags, Requires,
    Provides, Status, and Resources. Add multiple of them with commas (no whitespace).
    For example, if you wanted Description and Resources, you would put here Description,Resources
  type: string
  inputBinding:
    prefix: --report
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-help

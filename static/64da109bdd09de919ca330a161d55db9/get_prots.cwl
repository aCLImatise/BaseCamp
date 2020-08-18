class: CommandLineTool
id: ../../../get_prots.pl.cwl
inputs:
- id: filter_include_string
  doc: Filter Include String
  type: boolean
  inputBinding:
    prefix: -I
- id: filter_exclude_string
  doc: Filter Exclude String
  type: boolean
  inputBinding:
    prefix: -X
- id: enable_debug_messages
  doc: Enable debug messages
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- get_prots.pl

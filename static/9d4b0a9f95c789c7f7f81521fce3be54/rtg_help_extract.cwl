class: CommandLineTool
id: rtg_help_extract.cwl
inputs:
- id: file
  doc: the indexed block compressed genome position data file to extract
  type: File
  inputBinding:
    position: 0
- id: header
  doc: print out header also
  type: boolean
  inputBinding:
    prefix: --header
- id: header_only
  doc: out header only
  type: string
  inputBinding:
    prefix: --header-only
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- extract

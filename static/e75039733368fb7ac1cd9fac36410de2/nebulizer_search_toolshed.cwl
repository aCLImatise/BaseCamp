class: CommandLineTool
id: nebulizer_search_toolshed.cwl
inputs:
- id: in_toolshed
  doc: "specify a toolshed URL to search, or 'main' (the main\nGalaxy toolshed, the\
    \ default) or 'test' (the test\nGalaxy toolshed)"
  type: string
  inputBinding:
    prefix: --toolshed
- id: in_galaxy
  doc: check if tool repositories are installed in GALAXY
  type: string
  inputBinding:
    prefix: --galaxy
- id: in_query_string_dot
  doc: Specify other toolsheds by an alias (either 'main' or 'test') or by
  type: string
  inputBinding:
    position: 0
- id: in_instance
  doc: -l                   use a long listing format that includes tool
  type: string
  inputBinding:
    position: 0
- id: in_descriptions
  doc: --help               Show this message and exit.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- search_toolshed

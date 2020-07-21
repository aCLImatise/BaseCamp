class: CommandLineTool
id: ../../../delta2cvg.cwl
inputs:
- id: min_coverage_display
  doc: '- Min coverage to display'
  type: string
  inputBinding:
    prefix: -m
- id: max_coverage_display
  doc: '- Max coverage to display'
  type: string
  inputBinding:
    prefix: -M
- id: merge
  doc: '- Merge coverage intervals '
  type: boolean
  inputBinding:
    prefix: -merge
- id: version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean
  inputBinding:
    prefix: -V
- id: depend
  doc: '- Print the program and database dependency list;'
  type: boolean
  inputBinding:
    prefix: -depend
- id: debug
  doc: '- Set the debug <level> (0, non-debug by default); '
  type: string
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- delta2cvg

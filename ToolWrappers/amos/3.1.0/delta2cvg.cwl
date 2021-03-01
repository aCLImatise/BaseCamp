class: CommandLineTool
id: delta2cvg.cwl
inputs:
- id: in_min_coverage_display
  doc: '- Min coverage to display'
  type: long?
  inputBinding:
    prefix: -m
- id: in_max_coverage_display
  doc: '- Max coverage to display'
  type: long?
  inputBinding:
    prefix: -M
- id: in_merge
  doc: '- Merge coverage intervals'
  type: boolean?
  inputBinding:
    prefix: -merge
- id: in_version_print_version
  doc: '|version      - Print the version and exit;'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_depend
  doc: '- Print the program and database dependency list;'
  type: boolean?
  inputBinding:
    prefix: -depend
- id: in_debug
  doc: '- Set the debug <level> (0, non-debug by default);'
  type: long?
  inputBinding:
    prefix: -debug
- id: in_delta_file
  doc: '#>Streptococcus_suis 2_14_26_F3 2007491 46'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- delta2cvg

class: CommandLineTool
id: checkm_profile.cwl
inputs:
- id: in_file
  doc: 'print results to file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --file
- id: in_tab_table
  doc: print tab-separated values table
  type: boolean?
  inputBinding:
    prefix: --tab_table
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_coverage_file
  doc: file indicating coverage of each sequence (see coverage command)
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
- checkm
- profile

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_profile.cwl
inputs:
- id: file
  doc: 'print results to file (default: stdout)'
  type: File
  inputBinding:
    prefix: --file
- id: tab_table
  doc: print tab-separated values table
  type: boolean
  inputBinding:
    prefix: --tab_table
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: coverage_file
  doc: file indicating coverage of each sequence (see coverage command)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- profile

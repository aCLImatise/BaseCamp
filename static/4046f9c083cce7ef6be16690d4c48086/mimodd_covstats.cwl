class: CommandLineTool
id: mimodd_covstats.cwl
inputs:
- id: cov_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- covstats

class: CommandLineTool
id: ../../../mb_bsfinder_inputfile.cwl
inputs:
- id: threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --threshold
- id: min_cov
  doc: ''
  type: long
  inputBinding:
    prefix: --mincov
- id: mb_bs_finder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-bsfinder
- inputfile

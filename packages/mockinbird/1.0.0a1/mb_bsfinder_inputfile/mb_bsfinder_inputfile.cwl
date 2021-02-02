class: CommandLineTool
id: mb_bsfinder_inputfile.cwl
inputs:
- id: in_min_cov
  doc: ''
  type: long
  inputBinding:
    prefix: --mincov
- id: in_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --threshold
- id: in_mb_bs_finder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-bsfinder
- inputfile

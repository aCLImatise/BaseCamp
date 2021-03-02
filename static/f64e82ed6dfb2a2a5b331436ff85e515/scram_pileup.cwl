class: CommandLineTool
id: scram_pileup.cwl
inputs:
- id: in_gap_pileup_format
  doc: Gap5 pileup format.
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_depth_format
  doc: Depth format.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_filename_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scram_pileup

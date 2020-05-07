class: CommandLineTool
id: bfmtx2m4.pl_m4.pre_directory.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m4pre
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: all_norm_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bfmtx2m4.pl
- m4.pre
- directory

class: CommandLineTool
id: scHicMergeToSCool.cwl
inputs:
- id: matrices
  doc: 'input file(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicMergeToSCool

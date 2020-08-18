class: CommandLineTool
id: ../../../wtdbgConvert.cwl
inputs:
- id: output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
- id: file_dot_dbg_dot_lay
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wtdbgConvert

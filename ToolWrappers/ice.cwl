class: CommandLineTool
id: ice.cwl
inputs:
- id: in_results_filename
  doc: ''
  type: File
  inputBinding:
    prefix: --results_filename
- id: in_normalization
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
- ice

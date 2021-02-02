class: CommandLineTool
id: ../../../whatshap.cwl
inputs:
- id: in_debug
  doc: Print debug messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- whatshap

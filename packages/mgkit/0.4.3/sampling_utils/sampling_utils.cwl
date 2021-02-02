class: CommandLineTool
id: ../../../sampling_utils.cwl
inputs:
- id: in_cite
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sampling-utils

class: CommandLineTool
id: ../../../igdiscover.cwl
inputs:
- id: in_profile
  doc: Save profiling information to igdiscover.prof
  type: boolean
  inputBinding:
    prefix: --profile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover

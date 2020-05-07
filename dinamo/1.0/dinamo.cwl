class: CommandLineTool
id: dinamo.cwl
inputs:
- id: no_log
  doc: ': Prevents the log ouput from being displayed'
  type: boolean
  inputBinding:
    prefix: --no-log
outputs: []
cwlVersion: v1.1
baseCommand:
- dinamo

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/RNAlienStatistics.cwl
inputs:
- id: verbose
  doc: Loud verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAlienStatistics

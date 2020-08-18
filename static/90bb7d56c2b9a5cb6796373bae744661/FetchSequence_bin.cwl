class: CommandLineTool
id: ../../../FetchSequence_bin.cwl
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
- FetchSequence-bin

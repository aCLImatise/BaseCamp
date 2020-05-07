class: CommandLineTool
id: nf_core.cwl
inputs:
- id: verbose
  doc: Verbose output (print debug statements)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core

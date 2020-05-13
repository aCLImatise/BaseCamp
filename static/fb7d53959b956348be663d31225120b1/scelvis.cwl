class: CommandLineTool
id: scelvis.cwl
inputs:
- id: verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- scelvis

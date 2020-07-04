class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_export.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- export

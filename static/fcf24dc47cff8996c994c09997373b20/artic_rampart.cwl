class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_rampart.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: protocol_directory
  doc: The RAMPART protocols directory.
  type: string
  inputBinding:
    prefix: --protocol-directory
- id: run_directory
  doc: The run directory
  type: string
  inputBinding:
    prefix: --run-directory
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- rampart

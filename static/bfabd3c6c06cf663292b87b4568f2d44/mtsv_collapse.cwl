class: CommandLineTool
id: mtsv_collapse.cwl
inputs:
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: output
  doc: Path to write combined outupt file to.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-collapse

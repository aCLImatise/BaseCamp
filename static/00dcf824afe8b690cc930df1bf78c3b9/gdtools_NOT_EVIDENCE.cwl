class: CommandLineTool
id: gdtools_NOT_EVIDENCE.cwl
inputs:
- id: output
  doc: output GD file (DEFAULT=output.gd)
  type: string
  inputBinding:
    prefix: --output
- id: id
  doc: Reorder IDs (Flag)
  type: boolean
  inputBinding:
    prefix: --id
- id: verbose
  doc: Verbose Mode (Flag)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- NOT-EVIDENCE

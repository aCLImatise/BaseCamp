class: CommandLineTool
id: TOBIAS_MaxPos.cwl
inputs:
- id: bed
  doc: Regions to search for max position within
  type: boolean
  inputBinding:
    prefix: --bed
- id: bigwig
  doc: Scores used to identify maximum value
  type: boolean
  inputBinding:
    prefix: --bigwig
- id: output
  doc: 'Path to output .bed-file (default: scored sites are written to stdout)'
  type: boolean
  inputBinding:
    prefix: --output
- id: invert
  doc: Find minimum position instead of maximum position
  type: boolean
  inputBinding:
    prefix: --invert
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- MaxPos

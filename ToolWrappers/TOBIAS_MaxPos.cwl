class: CommandLineTool
id: TOBIAS_MaxPos.cwl
inputs:
- id: in_bed
  doc: Regions to search for max position within
  type: boolean
  inputBinding:
    prefix: --bed
- id: in_bigwig
  doc: Scores used to identify maximum value
  type: boolean
  inputBinding:
    prefix: --bigwig
- id: in_output
  doc: 'Path to output .bed-file (default: scored sites are written to stdout)'
  type: File
  inputBinding:
    prefix: --output
- id: in_invert
  doc: Find minimum position instead of maximum position
  type: boolean
  inputBinding:
    prefix: --invert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output .bed-file (default: scored sites are written to stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- TOBIAS
- MaxPos

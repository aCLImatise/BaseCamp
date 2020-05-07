class: CommandLineTool
id: extract_variants.cwl
inputs:
- id: skip_header
  doc: Write gVCF output without header
  type: boolean
  inputBinding:
    prefix: --skip-header
- id: invert
  doc: Invert the filter so that only non-variant records are  output.
  type: boolean
  inputBinding:
    prefix: --invert
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_variants

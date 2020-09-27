class: CommandLineTool
id: extract_variants.cwl
inputs:
- id: in_skip_header
  doc: Write gVCF output without header
  type: boolean
  inputBinding:
    prefix: --skip-header
- id: in_invert
  doc: Invert the filter so that only non-variant records are
  type: boolean
  inputBinding:
    prefix: --invert
- id: in_output_dot
  doc: 'help:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_variants

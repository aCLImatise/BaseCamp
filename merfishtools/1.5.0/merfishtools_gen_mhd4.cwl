class: CommandLineTool
id: merfishtools_gen_mhd4.cwl
inputs:
- id: one_bits
  doc: Number of 1-bits.
  type: long
  inputBinding:
    prefix: --onebits
- id: not_expressed
  doc: Regular expression pattern for features that should be marked as not expressed.
    This is useful to correctly model, e.g., misidentification probes.
  type: string
  inputBinding:
    prefix: --not-expressed
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- gen-mhd4

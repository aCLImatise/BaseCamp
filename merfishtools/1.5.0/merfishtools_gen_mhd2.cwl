class: CommandLineTool
id: merfishtools_gen_mhd2.cwl
inputs:
- id: bits
  doc: Number of bits.
  type: long
  inputBinding:
    prefix: --bits
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
- gen-mhd2

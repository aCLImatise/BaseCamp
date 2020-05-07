class: CommandLineTool
id: convert_zero_one_based_OPTIONS_INPUT_FILE.cwl
inputs:
- id: to_base
  doc: '[zero|one]  Specify output file format: one-based or zero- based cordinate
    systems (default:one)'
  type: boolean
  inputBinding:
    prefix: --to-base
- id: header
  doc: / --no-header     Specify whether header is present in INPUT_FILE
  type: boolean
  inputBinding:
    prefix: --header
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_zero_one_based
- OPTIONS
- INPUT_FILE

class: CommandLineTool
id: sketchy_utils_fx_sample.cwl
inputs:
- id: fast_x
  doc: Path to Fast{a,q} input file.  [required]
  type: File
  inputBinding:
    prefix: --fastx
- id: output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: string
  inputBinding:
    prefix: --output
- id: sample
  doc: Sample size in number of reads [1000].
  type: long
  inputBinding:
    prefix: --sample
- id: replacement
  doc: Sample with replacement [false].
  type: boolean
  inputBinding:
    prefix: --replacement
- id: seed
  doc: Seed for sampling function [none].
  type: boolean
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-sample

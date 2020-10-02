class: CommandLineTool
id: sketchy_utils_fx_sample.cwl
inputs:
- id: in_fast_x
  doc: Path to Fast{a,q} input file.  [required]
  type: File
  inputBinding:
    prefix: --fastx
- id: in_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File
  inputBinding:
    prefix: --output
- id: in_sample
  doc: Sample size in number of reads [1000].
  type: long
  inputBinding:
    prefix: --sample
- id: in_replacement
  doc: Sample with replacement [false].
  type: boolean
  inputBinding:
    prefix: --replacement
- id: in_seed
  doc: Seed for sampling function [none].
  type: boolean
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output to Fast{a,q} file. Default stdout [-]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-sample

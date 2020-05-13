class: CommandLineTool
id: biom_head.cwl
inputs:
- id: input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: output_fp
  doc: An output file-path
  type: File
  inputBinding:
    prefix: --output-fp
- id: n_obs
  doc: The number of observations to show
  type: long
  inputBinding:
    prefix: --n-obs
- id: n_samp
  doc: The number of samples to show
  type: long
  inputBinding:
    prefix: --n-samp
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- head

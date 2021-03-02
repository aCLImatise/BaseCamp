class: CommandLineTool
id: biom_head.cwl
inputs:
- id: in_input_fp
  doc: The input BIOM table  [required]
  type: File?
  inputBinding:
    prefix: --input-fp
- id: in_output_fp
  doc: An output file-path
  type: File?
  inputBinding:
    prefix: --output-fp
- id: in_n_obs
  doc: The number of observations to show
  type: long?
  inputBinding:
    prefix: --n-obs
- id: in_n_samp
  doc: The number of samples to show
  type: long?
  inputBinding:
    prefix: --n-samp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: An output file-path
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- head

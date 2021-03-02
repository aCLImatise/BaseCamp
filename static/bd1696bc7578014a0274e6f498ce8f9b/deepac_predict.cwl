class: CommandLineTool
id: deepac_predict.cwl
inputs:
- id: in_array
  doc: Use .npy input instead.
  type: boolean?
  inputBinding:
    prefix: --array
- id: in_sensitive
  doc: Use the sensitive model.
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_rapid
  doc: Use the rapid CNN model.
  type: boolean?
  inputBinding:
    prefix: --rapid
- id: in_custom
  doc: Use the user-supplied, already compiled CUSTOM model.
  type: string?
  inputBinding:
    prefix: --custom
- id: in_output
  doc: Output file path [.npy].
  type: File?
  inputBinding:
    prefix: --output
- id: in_n_cpus
  doc: 'Number of CPU cores. Default: all.'
  type: long?
  inputBinding:
    prefix: --n-cpus
- id: in_gpus
  doc: "GPU devices to use (comma-separated). Default: all\n"
  type: string[]
  inputBinding:
    prefix: --gpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file path [.npy].
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- deepac
- predict

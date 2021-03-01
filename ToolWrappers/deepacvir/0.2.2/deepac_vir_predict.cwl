class: CommandLineTool
id: deepac_vir_predict.cwl
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
  doc: 'GPU devices to use (comma-separated). Default: all'
  type: string[]
  inputBinding:
    prefix: --gpus
- id: in_rc_check
  doc: Check RC-constraint compliance (requires .npy input).
  type: boolean?
  inputBinding:
    prefix: --rc-check
- id: in_plot_kind
  doc: Plot kind for the RC-constraint compliance check.
  type: string?
  inputBinding:
    prefix: --plot-kind
- id: in_alpha
  doc: Alpha value for the RC-constraint compliance check
  type: string?
  inputBinding:
    prefix: --alpha
- id: in_plot_dot
  doc: --replicates REPLICATES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file path [.npy].
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacvir:0.2.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-vir
- predict

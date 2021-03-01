class: CommandLineTool
id: deepac_live_test.cwl
inputs:
- id: in_command
  doc: DeePaC command to use (switches builtin models).
  type: string?
  inputBinding:
    prefix: --command
- id: in_custom
  doc: Use a custom model.
  type: boolean?
  inputBinding:
    prefix: --custom
- id: in_model
  doc: Model to use. "rapid", "sensitive" or custom .h5 file.
  type: File?
  inputBinding:
    prefix: --model
- id: in_n_cpus_rec
  doc: 'Number of cores used by the receiver. Default: all'
  type: long?
  inputBinding:
    prefix: --n-cpus-rec
- id: in_gpus
  doc: 'GPU devices to use (comma-separated). Default: all'
  type: string[]
  inputBinding:
    prefix: --gpus
- id: in_keep
  doc: Don't delete previous test output.
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_scale
  doc: "Generate s*1024 reads for testing (Default: s=1).\n"
  type: long?
  inputBinding:
    prefix: --scale
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deepac-live
- test

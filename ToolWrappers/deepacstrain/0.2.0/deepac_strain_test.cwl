class: CommandLineTool
id: deepac_strain_test.cwl
inputs:
- id: in_n_cpus
  doc: Number of CPU cores.
  type: long?
  inputBinding:
    prefix: --n-cpus
- id: in_n_gpus
  doc: Number of GPUs.
  type: long?
  inputBinding:
    prefix: --n-gpus
- id: in_explain
  doc: Test explain workflows.
  type: boolean?
  inputBinding:
    prefix: --explain
- id: in_gwp_a
  doc: Test gwpa workflows.
  type: boolean?
  inputBinding:
    prefix: --gwpa
- id: in_all
  doc: Test all functions.
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_quick
  doc: Don't test heavy models (e.g. when no GPU available).
  type: boolean?
  inputBinding:
    prefix: --quick
- id: in_keep
  doc: Don't delete previous test output.
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_test
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deepac-strain
- test

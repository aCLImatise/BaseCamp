class: CommandLineTool
id: deepac_test.cwl
inputs:
- id: in_n_cpus
  doc: 'Number of CPU cores. Default: all.'
  type: long
  inputBinding:
    prefix: --n-cpus
- id: in_gpus
  doc: 'GPU devices to use. Default: all'
  type: string[]
  inputBinding:
    prefix: --gpus
- id: in_explain
  doc: Test explain workflows.
  type: boolean
  inputBinding:
    prefix: --explain
- id: in_gwp_a
  doc: Test gwpa workflows.
  type: boolean
  inputBinding:
    prefix: --gwpa
- id: in_all
  doc: Test all functions.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_quick
  doc: Don't test heavy models (e.g. when no GPU available).
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_keep
  doc: Don't delete previous test output.
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_scale
  doc: 'Generate s*1024 reads for testing (Default: s=1).'
  type: long
  inputBinding:
    prefix: --scale
- id: in_input_modes
  doc: "[INPUT_MODES [INPUT_MODES ...]]\nInput modes to test: memory, sequence and/or\
    \ tfdata.\nDefault: all.\n"
  type: boolean
  inputBinding:
    prefix: --input-modes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac
- test

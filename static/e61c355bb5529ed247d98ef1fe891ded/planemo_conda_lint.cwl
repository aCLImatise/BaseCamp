class: CommandLineTool
id: planemo_conda_lint.cwl
inputs:
- id: report_level
  doc: '[all|warn|error]'
  type: boolean
  inputBinding:
    prefix: --report_level
- id: fail_level
  doc: '[warn|error]'
  type: boolean
  inputBinding:
    prefix: --fail_level
- id: recursive
  doc: Recursively perform command for nested conda directories.
  type: boolean
  inputBinding:
    prefix: --recursive
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- conda_lint

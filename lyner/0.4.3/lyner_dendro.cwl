class: CommandLineTool
id: ../../../lyner_dendro.cwl
inputs:
- id: in_axis
  doc: RANGE
  type: long
  inputBinding:
    prefix: --axis
- id: in_methods
  doc: ''
  type: string
  inputBinding:
    prefix: --methods
- id: in_mode
  doc: '[consensus|each]'
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_num_components
  doc: ''
  type: long
  inputBinding:
    prefix: --num-components
- id: in_num_runs
  doc: ''
  type: long
  inputBinding:
    prefix: --num-runs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- dendro

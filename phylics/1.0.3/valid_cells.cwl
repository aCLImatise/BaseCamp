class: CommandLineTool
id: ../../../valid_cells.cwl
inputs:
- id: verbose
  doc: Verbose execution.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sample_name
  doc: Sample name
  type: string
  inputBinding:
    position: 0
- id: results_dot_txt
  doc: Path to stats file
  type: string
  inputBinding:
    position: 1
- id: seg_copy
  doc: Path to cnvs file
  type: string
  inputBinding:
    position: 2
- id: interval_slash_value
  doc: 'Interval of values (p1-p2) or single values (p) to be filtered out. At least
    one interval/value must be specified. Intervals must be compliant to the following
    format: p1-p2. Values must be compliant to the following format: p.'
  type: long
  inputBinding:
    position: 3
- id: out_dir
  doc: Path to the output directory
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- valid_cells

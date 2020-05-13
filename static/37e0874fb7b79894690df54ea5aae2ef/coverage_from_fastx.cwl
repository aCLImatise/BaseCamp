class: CommandLineTool
id: coverage_from_fastx.cwl
inputs:
- id: base_calls
  doc: input fastx file.
  type: string
  inputBinding:
    position: 0
- id: ref_len
  doc: reference length (e.g. 4.8kb/mb/gb) or reference fastx from which to calculate
    length.
  type: string
  inputBinding:
    position: 1
- id: coverage
  doc: 'Calculate fraction of reads required for this coverage. (default: None)'
  type: string
  inputBinding:
    prefix: --coverage
- id: longest
  doc: 'Use the longest reads when calculating fraction reads required for a given
    coverage. (default: False)'
  type: boolean
  inputBinding:
    prefix: --longest
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage_from_fastx

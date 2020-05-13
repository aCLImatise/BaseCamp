class: CommandLineTool
id: subsample.py.cwl
inputs:
- id: by
  doc: 'Unique specifier name(default: id)'
  type: string
  inputBinding:
    prefix: --by
- id: iterations
  doc: 'Number of iterations (default: 100)'
  type: string
  inputBinding:
    prefix: --iterations
- id: range
  doc: 'Length range (ex: (1000,2000), default None)'
  type: string
  inputBinding:
    prefix: --range
- id: min_fl_count
  doc: 'Minimum FL count (default: 1)'
  type: long
  inputBinding:
    prefix: --min_fl_count
- id: step
  doc: 'Step size (default: 10000)'
  type: string
  inputBinding:
    prefix: --step
outputs: []
cwlVersion: v1.1
baseCommand:
- subsample.py

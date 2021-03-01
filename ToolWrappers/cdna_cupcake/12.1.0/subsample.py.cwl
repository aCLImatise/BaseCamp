class: CommandLineTool
id: subsample.py.cwl
inputs:
- id: in_by
  doc: 'Unique specifier name(default: id)'
  type: string?
  inputBinding:
    prefix: --by
- id: in_iterations
  doc: 'Number of iterations (default: 100)'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_range
  doc: 'Length range (ex: (1000,2000), default None)'
  type: long?
  inputBinding:
    prefix: --range
- id: in_min_fl_count
  doc: 'Minimum FL count (default: 1)'
  type: long?
  inputBinding:
    prefix: --min_fl_count
- id: in_step
  doc: 'Step size (default: 10000)'
  type: long?
  inputBinding:
    prefix: --step
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- subsample.py

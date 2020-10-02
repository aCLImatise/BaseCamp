class: CommandLineTool
id: iRep_filter.py.cwl
inputs:
- id: in__irep_tables
  doc: '[T [T ...]]  iRep table(s)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_min_coverage_default
  doc: min. coverage (default = 5)
  type: long
  inputBinding:
    prefix: -c
- id: in_min_percent_windows
  doc: min. percent windows passing filter (default = 98)
  type: long
  inputBinding:
    prefix: -w
- id: in_min_r_value
  doc: min. r^2 value for fitting (default = 0.90)
  type: long
  inputBinding:
    prefix: -r
- id: in_max_fragmentsmbp_default
  doc: max. fragments/Mbp (default = 175)
  type: long
  inputBinding:
    prefix: -f
- id: in_max_gc_bias
  doc: max. GC bias (default = no filter)
  type: long
  inputBinding:
    prefix: -g
- id: in_long
  doc: print in long format
  type: boolean
  inputBinding:
    prefix: --long
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iRep_filter.py

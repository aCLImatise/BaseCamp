class: CommandLineTool
id: iRep_filter.py.cwl
inputs:
- id: t
  doc: '[T [T ...]]  iRep table(s)'
  type: boolean
  inputBinding:
    prefix: -t
- id: c
  doc: min. coverage (default = 5)
  type: string
  inputBinding:
    prefix: -c
- id: w
  doc: min. percent windows passing filter (default = 98)
  type: string
  inputBinding:
    prefix: -w
- id: r
  doc: min. r^2 value for fitting (default = 0.90)
  type: string
  inputBinding:
    prefix: -r
- id: f
  doc: max. fragments/Mbp (default = 175)
  type: string
  inputBinding:
    prefix: -f
- id: g
  doc: max. GC bias (default = no filter)
  type: string
  inputBinding:
    prefix: -g
- id: long
  doc: print in long format
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- iRep_filter.py

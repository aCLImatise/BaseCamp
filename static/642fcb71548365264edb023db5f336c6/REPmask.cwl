class: CommandLineTool
id: REPmask.cwl
inputs:
- id: v
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: ': cutoff depth for declaring an interval repetitive.'
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: ': use this name as for the repeat mask track'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- REPmask

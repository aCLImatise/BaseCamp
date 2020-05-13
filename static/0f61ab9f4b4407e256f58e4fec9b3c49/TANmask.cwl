class: CommandLineTool
id: TANmask.cwl
inputs:
- id: v
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: ': shortest tandem interval to report.'
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: ': use this name as for the tandem mask track'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- TANmask

class: CommandLineTool
id: logcombiner.cwl
inputs:
- id: trees
  doc: this option to combine tree log files
  type: string
  inputBinding:
    prefix: -trees
- id: decimal
  doc: option converts numbers from scientific to decimal notation
  type: string
  inputBinding:
    prefix: -decimal
- id: burnin
  doc: number of states to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -burnin
- id: resample
  doc: the log files to this frequency (the original sampling frequency must be a
    factor of this value)
  type: string
  inputBinding:
    prefix: -resample
- id: scale
  doc: scaling factor that will multiply any time units by this value
  type: string
  inputBinding:
    prefix: -scale
- id: strip
  doc: out all annotations (trees only)
  type: string
  inputBinding:
    prefix: -strip
- id: re_number
  doc: option renumbers output states consecutively
  type: string
  inputBinding:
    prefix: -renumber
outputs: []
cwlVersion: v1.1
baseCommand:
- logcombiner

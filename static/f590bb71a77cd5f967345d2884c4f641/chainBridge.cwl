class: CommandLineTool
id: chainBridge.cwl
inputs:
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_2bit
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_2bit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: max_gap
  doc: 'Maximum size of double-sided gap to try to bridge (default: 6000) Note: there
    is no size limit for exact sequence matches'
  type: string
  inputBinding:
    prefix: -maxGap
- id: score_scheme
  doc: Read the scoring matrix from a blastz-format file
  type: File
  inputBinding:
    prefix: -scoreScheme
- id: linear_gap
  doc: '=<medium|loose|filename> Specify type of linearGap to use. loose is chicken/human
    linear gap costs. medium is mouse/human linear gap costs. Or specify a piecewise
    linearGap tab delimited file. (default: loose)'
  type: boolean
  inputBinding:
    prefix: -linearGap
outputs: []
cwlVersion: v1.1
baseCommand:
- chainBridge

class: CommandLineTool
id: loganalyser.cwl
inputs:
- id: burnin
  doc: number of states to be considered as 'burn-in'
  type: string
  inputBinding:
    prefix: -burnin
- id: short
  doc: this option to produce a short report
  type: string
  inputBinding:
    prefix: -short
- id: hpd
  doc: this option to produce hpds for each trace
  type: string
  inputBinding:
    prefix: -hpd
- id: ess
  doc: this option to produce ESSs for each trace
  type: string
  inputBinding:
    prefix: -ess
- id: stderr
  doc: this option to produce standard Error
  type: string
  inputBinding:
    prefix: -stdErr
- id: marginal
  doc: the trace to use to calculate the marginal likelihood
  type: string
  inputBinding:
    prefix: -marginal
outputs: []
cwlVersion: v1.1
baseCommand:
- loganalyser

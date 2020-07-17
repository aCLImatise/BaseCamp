class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/loganalyser.cwl
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
- id: std
  doc: ''
  type: boolean
  inputBinding:
    prefix: -std
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- loganalyser

class: CommandLineTool
id: loganalyser.cwl
inputs:
- id: in_burnin
  doc: number of states to be considered as 'burn-in'
  type: long
  inputBinding:
    prefix: -burnin
- id: in_short
  doc: this option to produce a short report
  type: string
  inputBinding:
    prefix: -short
- id: in_hpd
  doc: this option to produce hpds for each trace
  type: string
  inputBinding:
    prefix: -hpd
- id: in_ess
  doc: this option to produce ESSs for each trace
  type: string
  inputBinding:
    prefix: -ess
- id: in_stderr
  doc: this option to produce standard Error
  type: string
  inputBinding:
    prefix: -stdErr
- id: in_marginal
  doc: the trace to use to calculate the marginal likelihood
  type: string
  inputBinding:
    prefix: -marginal
- id: in_by
  doc: Andrew Rambaut and Alexei J. Drummond
  type: string
  inputBinding:
    position: 0
- id: in_a_dotrambautateddotacdotuk
  doc: Department of Computer Science
  type: string
  inputBinding:
    position: 0
- id: in_alexei_atcs_dot_auckland_do_tac_dot_nz
  doc: 'dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- loganalyser

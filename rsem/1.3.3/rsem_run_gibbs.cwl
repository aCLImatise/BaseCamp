class: CommandLineTool
id: ../../../rsem_run_gibbs.cwl
inputs:
- id: reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: imd_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stat_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: burnin
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: n_samples
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: gap
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-run-gibbs

class: CommandLineTool
id: rsem_run_gibbs.cwl
inputs:
- id: in_reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_imd_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stat_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_burnin
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_n_samples
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_gap
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-run-gibbs

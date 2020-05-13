class: CommandLineTool
id: concoct_refine.cwl
inputs:
- id: cluster_file
  doc: string specifying cluster file
  type: string
  inputBinding:
    position: 0
- id: original_data
  doc: string original but transformed data file
  type: string
  inputBinding:
    position: 1
- id: scg_file
  doc: string specifying scg frequency file
  type: string
  inputBinding:
    position: 2
- id: expansion_factor
  doc: number of clusters to expand by
  type: string
  inputBinding:
    prefix: --expansion_factor
- id: seed
  doc: The seed used for algorithm result reproducibility.
  type: string
  inputBinding:
    prefix: --seed
- id: threads
  doc: number of threads to use defaults to one
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- concoct_refine

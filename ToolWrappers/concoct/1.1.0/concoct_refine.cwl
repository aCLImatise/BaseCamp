class: CommandLineTool
id: concoct_refine.cwl
inputs:
- id: in_expansion_factor
  doc: number of clusters to expand by
  type: long
  inputBinding:
    prefix: --expansion_factor
- id: in_seed
  doc: The seed used for algorithm result reproducibility.
  type: string
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: "number of threads to use defaults to one\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_cluster_file
  doc: string specifying cluster file
  type: string
  inputBinding:
    position: 0
- id: in_original_data
  doc: string original but transformed data file
  type: string
  inputBinding:
    position: 1
- id: in_scg_file
  doc: string specifying scg frequency file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- concoct_refine

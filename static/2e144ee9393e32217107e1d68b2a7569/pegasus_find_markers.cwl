class: CommandLineTool
id: pegasus_find_markers.cwl
inputs:
- id: in_use_threads_threads
  doc: 'Use <threads> threads. [default: 1]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_labels
  doc: '<attr> used as cluster labels. [default: louvain_labels]'
  type: string?
  inputBinding:
    prefix: --labels
- id: in_de_key
  doc: "Key for storing DE results in 'varm' field. [default: de_res]"
  type: string?
  inputBinding:
    prefix: --de-key
- id: in_remove_ribo
  doc: Remove ribosomal genes with either RPL or RPS as prefixes.
  type: boolean?
  inputBinding:
    prefix: --remove-ribo
- id: in_min_gain
  doc: 'Only report genes with a feature importance score (in gain) of at least <gain>.
    [default: 1.0]'
  type: long?
  inputBinding:
    prefix: --min-gain
- id: in_random_state
  doc: 'Random state for initializing LightGBM and KMeans. [default: 0]'
  type: long?
  inputBinding:
    prefix: --random-state
- id: in_input_data_file
  doc: Single cell data after running the de_analysis.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- find_markers

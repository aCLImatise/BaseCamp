class: CommandLineTool
id: fba_demultiplex.cwl
inputs:
- id: in_input
  doc: "specify an input file (feature count matrix). The\noutput of `count`"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_directory
  doc: specify a output directory. Default (./demultiplexed)
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_specify_demultiplexing_method
  doc: "specify demultiplexing method. '1': Stoeckius et al.\n2018. Default (1)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_quantile
  doc: "specify quantile cutoff for the probability mass\nfunction. Default (0.9999)"
  type: double?
  inputBinding:
    prefix: --quantile
- id: in_clustering_method
  doc: specify inital clustering method. Default (kmedoids)
  type: string?
  inputBinding:
    prefix: --clustering_method
- id: in_visualization
  doc: specify to visualize demultiplexing result
  type: boolean?
  inputBinding:
    prefix: --visualization
- id: in_visualization_method
  doc: "specify embedding method for visualization (works if\n'-v' is given). Default\
    \ (tsne)\n"
  type: string?
  inputBinding:
    prefix: --visualization_method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: specify a output directory. Default (./demultiplexed)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- demultiplex

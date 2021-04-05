class: CommandLineTool
id: poppunk_mst.cwl
inputs:
- id: in_rank_fit
  doc: "Location of rank fit, a sparse matrix\n(*_rank*_fit.npz)"
  type: string?
  inputBinding:
    prefix: --rank-fit
- id: in_previous_clustering
  doc: CSV file with cluster definitions
  type: File?
  inputBinding:
    prefix: --previous-clustering
- id: in_previous_mst
  doc: Graph tool file from which previous MST can be loaded
  type: File?
  inputBinding:
    prefix: --previous-mst
- id: in_distance_pkl
  doc: "Input pickle from distances, which contains sample\nnames"
  type: string?
  inputBinding:
    prefix: --distance-pkl
- id: in_display_cluster
  doc: Column of clustering CSV to use for plotting
  type: string?
  inputBinding:
    prefix: --display-cluster
- id: in_output
  doc: Prefix for output files (required)
  type: string?
  inputBinding:
    prefix: --output
- id: in_no_plot
  doc: Do not try and draw the MST
  type: boolean?
  inputBinding:
    prefix: --no-plot
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_gpu_graph
  doc: Use cugraph for the calculation
  type: boolean?
  inputBinding:
    prefix: --gpu-graph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_mst

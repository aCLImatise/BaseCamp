class: CommandLineTool
id: scHicClusterMinHashHyperopt.cwl
inputs:
- id: in_matrix
  doc: The matrix to compute the loops on.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_cell_color
  doc: "The file with the associated cell types or cell cycle\nstages."
  type: File?
  inputBinding:
    prefix: --cellColor
- id: in_output_file_name
  doc: "File names for the result of the optimization\n(Default: hyperoptMinHash_result.txt)."
  type: File?
  inputBinding:
    prefix: --outputFileName
- id: in_method
  doc: "Method to optimize by hyperopt: random tree, tpe,\nadaptive tpe"
  type: string?
  inputBinding:
    prefix: --method
- id: in_runs
  doc: Number of runs of hyperopt.
  type: long?
  inputBinding:
    prefix: --runs
- id: in_nearest_neighbors
  doc: Number of runs of hyperopt.
  type: long?
  inputBinding:
    prefix: --nearestNeighbors
- id: in_number_of_hash_functions
  doc: "NUMBEROFHASHFUNCTIONS NUMBEROFHASHFUNCTIONS, -noh NUMBEROFHASHFUNCTIONS NUMBEROFHASHFUNCTIONS\
    \ NUMBEROFHASHFUNCTIONS\nNumber of hash functions range: start, stop, stepsize\n\
    (Default: (1000, 20000, 1000))."
  type: long?
  inputBinding:
    prefix: --numberOfHashfunctions
- id: in_number_of_clusters
  doc: "NUMBEROFCLUSTERS, -noc NUMBEROFCLUSTERS NUMBEROFCLUSTERS\nNumber of cluster\
    \ range (Default: (6, 15))."
  type: long?
  inputBinding:
    prefix: --numberOfClusters
- id: in_number_pc_a_dimensions
  doc: "NUMBERPCADIMENSIONS NUMBERPCADIMENSIONS, -nop NUMBERPCADIMENSIONS NUMBERPCADIMENSIONS\
    \ NUMBERPCADIMENSIONS\nNumber of PCA range: start, stop, stepsize (Default:\n\
    (30, 60, 1))."
  type: long?
  inputBinding:
    prefix: --numberPCADimensions
- id: in_u_map_number_of_neighbors
  doc: "UMAP_NUMBEROFNEIGHBORS UMAP_NUMBEROFNEIGHBORS, -unon UMAP_NUMBEROFNEIGHBORS\
    \ UMAP_NUMBEROFNEIGHBORS UMAP_NUMBEROFNEIGHBORS\nNumber of umap neighbors range:\
    \ start, stop, stepsize\n(Default: (30, 60, 1))."
  type: long?
  inputBinding:
    prefix: --umap_numberOfNeighbors
- id: in_u_map_n_components
  doc: "UMAP_N_COMPONENTS UMAP_N_COMPONENTS, -unoc UMAP_N_COMPONENTS UMAP_N_COMPONENTS\
    \ UMAP_N_COMPONENTS\nNumber of umap n_components range: start, stop,\nstepsize\
    \ (Default: (2, 10, 1))."
  type: long?
  inputBinding:
    prefix: --umap_n_components
- id: in_u_map_min_dist
  doc: "UMAP_MIN_DIST, -umin UMAP_MIN_DIST UMAP_MIN_DIST\nNumber of umap neighbors\
    \ range: start, stop (Default:\n(0.0, 0.5))."
  type: long?
  inputBinding:
    prefix: --umap_min_dist
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule) (Default: 16)."
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "File names for the result of the optimization\n(Default: hyperoptMinHash_result.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicClusterMinHashHyperopt

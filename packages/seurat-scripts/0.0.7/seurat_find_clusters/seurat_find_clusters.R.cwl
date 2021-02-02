class: CommandLineTool
id: seurat_find_clusters.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string
  inputBinding:
    prefix: --output-format
- id: in_resolution
  doc: Value of the resolution parameter, use a value above (below) 1.0 if you want
    to obtain a larger (smaller) number of communities.
  type: long
  inputBinding:
    prefix: --resolution
- id: in_algorithm
  doc: Algorithm for modularity optimization (1 = original Louvain algorithm; 2 =
    Louvain algorithm with multilevel refinement; 3 = SLM algorithm; 4 Leiden).
  type: long
  inputBinding:
    prefix: --algorithm
- id: in_tmp_file_location
  doc: Directory where intermediate files will be written. Specify the ABSOLUTE path.
  type: File
  inputBinding:
    prefix: --tmp-file-location
- id: in_modularity_fxn
  doc: 'Modularity function: 1 standard, 2 alternative.'
  type: long
  inputBinding:
    prefix: --modularity-fxn
- id: in_method
  doc: Method for leiden  (defaults to matrix which is fast for small datasets). Enable
    method = "igraph" to avoid casting large data to a dense matrix.
  type: string
  inputBinding:
    prefix: --method
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_output_text_file
  doc: File name in which to store text format set of clusters.
  type: File
  inputBinding:
    prefix: --output-text-file
- id: in_graph_name
  doc: Name of graph to use for the clustering algorithm.
  type: string
  inputBinding:
    prefix: --graph-name
- id: in_n_random_starts
  doc: Number of random starts
  type: long
  inputBinding:
    prefix: --nrandom-starts
- id: in_n_iterations
  doc: Maximal number of iterations per random start
  type: long
  inputBinding:
    prefix: --n-iterations
- id: in_group_singletons
  doc: Group singletons into nearest cluster. If FALSE, assign all singletons to a
    "singleton" group
  type: boolean
  inputBinding:
    prefix: --group-singletons
- id: in_random_seed
  doc: Seed of the random number generator
  type: long
  inputBinding:
    prefix: --random-seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_text_file
  doc: File name in which to store text format set of clusters.
  type: File
  outputBinding:
    glob: $(inputs.in_output_text_file)
cwlVersion: v1.1
baseCommand:
- seurat-find-clusters.R

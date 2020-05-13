class: CommandLineTool
id: seurat_find_clusters.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string
  inputBinding:
    prefix: --output-format
- id: resolution
  doc: Value of the resolution parameter, use a value above (below) 1.0 if you want
    to obtain a larger (smaller) number of communities.
  type: string
  inputBinding:
    prefix: --resolution
- id: algorithm
  doc: Algorithm for modularity optimization (1 = original Louvain algorithm; 2 =
    Louvain algorithm with multilevel refinement; 3 = SLM algorithm; 4 Leiden).
  type: string
  inputBinding:
    prefix: --algorithm
- id: tmp_file_location
  doc: Directory where intermediate files will be written. Specify the ABSOLUTE path.
  type: string
  inputBinding:
    prefix: --tmp-file-location
- id: modularity_fxn
  doc: 'Modularity function: 1 standard, 2 alternative.'
  type: string
  inputBinding:
    prefix: --modularity-fxn
- id: method
  doc: Method for leiden  (defaults to matrix which is fast for small datasets). Enable
    method = "igraph" to avoid casting large data to a dense matrix.
  type: string
  inputBinding:
    prefix: --method
- id: output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: string
  inputBinding:
    prefix: --output-object-file
- id: output_text_file
  doc: File name in which to store text format set of clusters.
  type: string
  inputBinding:
    prefix: --output-text-file
- id: graph_name
  doc: Name of graph to use for the clustering algorithm.
  type: string
  inputBinding:
    prefix: --graph-name
- id: n_random_starts
  doc: Number of random starts
  type: string
  inputBinding:
    prefix: --nrandom-starts
- id: n_iterations
  doc: Maximal number of iterations per random start
  type: string
  inputBinding:
    prefix: --n-iterations
- id: group_singletons
  doc: Group singletons into nearest cluster. If FALSE, assign all singletons to a
    "singleton" group
  type: boolean
  inputBinding:
    prefix: --group-singletons
- id: random_seed
  doc: Seed of the random number generator
  type: string
  inputBinding:
    prefix: --random-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- seurat-find-clusters.R

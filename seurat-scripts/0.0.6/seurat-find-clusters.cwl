#!/usr/bin/env cwl-runner

baseCommand:
- seurat-find-clusters.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-find-clusters.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: Value of the resolution parameter, use a value above (below) 1.0 if you want
    to obtain a larger (smaller) number of communities.
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: Algorithm for modularity optimization (1 = original Louvain algorithm; 2 =
    Louvain algorithm with multilevel refinement; 3 = SLM algorithm; 4 Leiden).
  id: algorithm
  inputBinding:
    prefix: --algorithm
  type: string
- doc: Directory where intermediate files will be written. Specify the ABSOLUTE path.
  id: tmp_file_location
  inputBinding:
    prefix: --tmp-file-location
  type: string
- doc: 'Modularity function: 1 standard, 2 alternative.'
  id: modularity_fxn
  inputBinding:
    prefix: --modularity-fxn
  type: string
- doc: Method for leiden  (defaults to matrix which is fast for small datasets). Enable
    method = "igraph" to avoid casting large data to a dense matrix.
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: File name in which to store serialized R object of type 'Seurat'.'
  id: output_object_file
  inputBinding:
    prefix: --output-object-file
  type: string
- doc: File name in which to store text format set of clusters.
  id: output_text_file
  inputBinding:
    prefix: --output-text-file
  type: string
- doc: Name of graph to use for the clustering algorithm.
  id: graph_name
  inputBinding:
    prefix: --graph-name
  type: string
- doc: Number of random starts
  id: n_random_starts
  inputBinding:
    prefix: --nrandom-starts
  type: string
- doc: Maximal number of iterations per random start
  id: n_iterations
  inputBinding:
    prefix: --n-iterations
  type: string
- doc: Group singletons into nearest cluster. If FALSE, assign all singletons to a
    "singleton" group
  id: group_singletons
  inputBinding:
    prefix: --group-singletons
  type: boolean
- doc: Seed of the random number generator
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string

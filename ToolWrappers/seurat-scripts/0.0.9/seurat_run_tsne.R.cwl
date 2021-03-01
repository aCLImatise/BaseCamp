class: CommandLineTool
id: seurat_run_tsne.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_reduction_use
  doc: Which dimensional reduction (e.g. PCA, ICA) to use for the tSNE. Default is
    PCA.
  type: string?
  inputBinding:
    prefix: --reduction-use
- id: in_tsn_e_method
  doc: 'Select the method to use to compute the tSNE. Available methods are: Rtsne,
    Flt-SNE'
  type: string?
  inputBinding:
    prefix: --tsne-method
- id: in_perplexity
  doc: Perplexity value for tSNE, if none is set, the default from seurat, 30, is
    used.
  type: long?
  inputBinding:
    prefix: --perplexity
- id: in_cells_use
  doc: File to be used to derive a vector of which cells to analyze (default, all
    cells).
  type: File?
  inputBinding:
    prefix: --cells-use
- id: in_dim_embed
  doc: The dimensional space of the resulting tSNE embedding (default is 2). For example,
    set to 3 for a 3d tSNE
  type: long?
  inputBinding:
    prefix: --dim_embed
- id: in_dims_use
  doc: A comma-separated list of the which dimensions to use as input features.
  type: string?
  inputBinding:
    prefix: --dims-use
- id: in_genes_use
  doc: File to be used to derive a vector of gene names. If set, run the tSNE on this
    subset of genes (instead of running on a set of reduced dimensions). Not set (NULL)
    by default.
  type: File?
  inputBinding:
    prefix: --genes-use
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_output_embeddings_file
  doc: File name in which to store a csv-format embeddings table with PCs by cell.
  type: File?
  inputBinding:
    prefix: --output-embeddings-file
- id: in_random_seed
  doc: Seed of the random number generator
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_add_iter
  doc: If an existing tSNE has already been computed, uses the current tSNE to seed
    the algorithm and then adds additional iterations on top of this
  type: boolean?
  inputBinding:
    prefix: --add-iter
- id: in_reduction_key
  doc: "KEY\ndimensional reduction key, specifies the string before the number for\
    \ the dimension names. tSNE_ by default"
  type: long?
  inputBinding:
    prefix: --reduction-key
- id: in_reduction_name
  doc: "NAME\ndimensional reduction name, specifies the position in the object$dr\
    \ list. tsne by default"
  type: string?
  inputBinding:
    prefix: --reduction-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_embeddings_file
  doc: File name in which to store a csv-format embeddings table with PCs by cell.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_embeddings_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seurat-scripts:0.0.9--0
cwlVersion: v1.1
baseCommand:
- seurat-run-tsne.R

version 1.0

task SeuratruntsneR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    String? reduction_use
    String? tsn_e_method
    Int? perplexity
    File? cells_use
    Int? dim_embed
    String? dims_use
    File? genes_use
    File? output_object_file
    File? output_embeddings_file
    Int? random_seed
    Boolean? add_iter
    Int? reduction_key
    String? reduction_name
  }
  command <<<
    seurat_run_tsne_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(reduction_use) then ("--reduction-use " +  '"' + reduction_use + '"') else ""} \
      ~{if defined(tsn_e_method) then ("--tsne-method " +  '"' + tsn_e_method + '"') else ""} \
      ~{if defined(perplexity) then ("--perplexity " +  '"' + perplexity + '"') else ""} \
      ~{if defined(cells_use) then ("--cells-use " +  '"' + cells_use + '"') else ""} \
      ~{if defined(dim_embed) then ("--dim_embed " +  '"' + dim_embed + '"') else ""} \
      ~{if defined(dims_use) then ("--dims-use " +  '"' + dims_use + '"') else ""} \
      ~{if defined(genes_use) then ("--genes-use " +  '"' + genes_use + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_embeddings_file) then ("--output-embeddings-file " +  '"' + output_embeddings_file + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (add_iter) then "--add-iter" else ""} \
      ~{if defined(reduction_key) then ("--reduction-key " +  '"' + reduction_key + '"') else ""} \
      ~{if defined(reduction_name) then ("--reduction-name " +  '"' + reduction_name + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    reduction_use: "Which dimensional reduction (e.g. PCA, ICA) to use for the tSNE. Default is PCA."
    tsn_e_method: "Select the method to use to compute the tSNE. Available methods are: Rtsne, Flt-SNE"
    perplexity: "Perplexity value for tSNE, if none is set, the default from seurat, 30, is used."
    cells_use: "File to be used to derive a vector of which cells to analyze (default, all cells)."
    dim_embed: "The dimensional space of the resulting tSNE embedding (default is 2). For example, set to 3 for a 3d tSNE"
    dims_use: "A comma-separated list of the which dimensions to use as input features."
    genes_use: "File to be used to derive a vector of gene names. If set, run the tSNE on this subset of genes (instead of running on a set of reduced dimensions). Not set (NULL) by default."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    output_embeddings_file: "File name in which to store a csv-format embeddings table with PCs by cell."
    random_seed: "Seed of the random number generator"
    add_iter: "If an existing tSNE has already been computed, uses the current tSNE to seed the algorithm and then adds additional iterations on top of this"
    reduction_key: "KEY\\ndimensional reduction key, specifies the string before the number for the dimension names. tSNE_ by default"
    reduction_name: "NAME\\ndimensional reduction name, specifies the position in the object$dr list. tsne by default"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_embeddings_file = "${in_output_embeddings_file}"
  }
}
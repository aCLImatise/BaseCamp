version 1.0

task SeuratrunpcaR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    File? pc_genes
    File? pc_cells
    Int? pcs_compute
    Boolean? reverse_pc_a
    File? output_object_file
    File? output_embeddings_file
    File? output_loadings_file
    File? output_stdev_file
    Boolean? weight_by_var
    Int? ndims_print
    Int? n_features_print
    Int? reduction_key
    String? reduction_name
  }
  command <<<
    seurat_run_pca_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(pc_genes) then ("--pc-genes " +  '"' + pc_genes + '"') else ""} \
      ~{if defined(pc_cells) then ("--pc-cells " +  '"' + pc_cells + '"') else ""} \
      ~{if defined(pcs_compute) then ("--pcs-compute " +  '"' + pcs_compute + '"') else ""} \
      ~{if (reverse_pc_a) then "--reverse-pca" else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_embeddings_file) then ("--output-embeddings-file " +  '"' + output_embeddings_file + '"') else ""} \
      ~{if defined(output_loadings_file) then ("--output-loadings-file " +  '"' + output_loadings_file + '"') else ""} \
      ~{if defined(output_stdev_file) then ("--output-stdev-file " +  '"' + output_stdev_file + '"') else ""} \
      ~{if (weight_by_var) then "--weight-by-var" else ""} \
      ~{if defined(ndims_print) then ("--ndims-print " +  '"' + ndims_print + '"') else ""} \
      ~{if defined(n_features_print) then ("--nfeatures-print " +  '"' + n_features_print + '"') else ""} \
      ~{if defined(reduction_key) then ("--reduction-key " +  '"' + reduction_key + '"') else ""} \
      ~{if defined(reduction_name) then ("--reduction-name " +  '"' + reduction_name + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    pc_genes: "File with gene names to scale/center. Default is all genes in object@data."
    pc_cells: "File with cell names to scale/center. Default is all cells in object@data."
    pcs_compute: "Total Number of PCs to compute and store (50 by default)."
    reverse_pc_a: "By default computes the PCA on the cell x gene matrix. Setting to true will compute it on gene x cell matrix."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    output_embeddings_file: "File name in which to store a csv-format embeddings table with PCs by cell."
    output_loadings_file: "File name in which to store a csv-format loadings table with PCs by gene."
    output_stdev_file: "File name in which to store PC stdev values (one per line)."
    weight_by_var: "Weight the cell embeddings by the variance of each PC (weights the gene loadings if rev.pca is TRUE)"
    ndims_print: "OF DIMS. PRINT\\nPCs to print genes for"
    n_features_print: "FEATURES PRINT\\nNumber of genes to print for each PC"
    reduction_key: "KEY\\ndimensional reduction key, specifies the string before the number for the dimension names. PC by default"
    reduction_name: "NAME\\ndimensional reduction name, pca by default"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_embeddings_file = "${in_output_embeddings_file}"
    File out_output_loadings_file = "${in_output_loadings_file}"
    File out_output_stdev_file = "${in_output_stdev_file}"
  }
}
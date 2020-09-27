version 1.0

task SeuratscaledataR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    File? genes_use
    String? vars_to_regress
    String? model_use
    String? use_umi
    Boolean? do_not_scale
    Boolean? do_not_center
    Int? scale_max
    Int? block_size
    Int? min_cells_to_block
    String? check_for_norm
    File? output_object_file
  }
  command <<<
    seurat_scale_data_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(genes_use) then ("--genes-use " +  '"' + genes_use + '"') else ""} \
      ~{if defined(vars_to_regress) then ("--vars-to-regress " +  '"' + vars_to_regress + '"') else ""} \
      ~{if defined(model_use) then ("--model-use " +  '"' + model_use + '"') else ""} \
      ~{if defined(use_umi) then ("--use-umi " +  '"' + use_umi + '"') else ""} \
      ~{if (do_not_scale) then "--do-not-scale" else ""} \
      ~{if (do_not_center) then "--do-not-center" else ""} \
      ~{if defined(scale_max) then ("--scale-max " +  '"' + scale_max + '"') else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(min_cells_to_block) then ("--min-cells-to-block " +  '"' + min_cells_to_block + '"') else ""} \
      ~{if defined(check_for_norm) then ("--check-for-norm " +  '"' + check_for_norm + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    genes_use: "File with gene names to scale/center (one gene per line). Default is all genes in object@data."
    vars_to_regress: "Comma-separated list of variables to regress out (previously latent.vars in RegressOut). For example, nUMI, or percent.mito."
    model_use: "Use a linear model or generalized linear model (poisson, negative binomial) for the regression. Options are 'linear' (default), 'poisson', and 'negbinom'."
    use_umi: "Regress on UMI count data. Default is FALSE for linear modeling, but automatically set to TRUE if model.use is 'negbinom' or 'poisson'."
    do_not_scale: "Skip the data scale."
    do_not_center: "Skip data centering."
    scale_max: "Max value to return for scaled data. The default is 10. Setting this can help reduce the effects of genes that are only expressed in a very small number of cells. If regressing out latent variables and using a non-linear model, the default is 50."
    block_size: "Default size for number of genes to scale at in a single computation. Increasing block.size may speed up calculations but at an additional memory cost."
    min_cells_to_block: "If object contains fewer than this number of cells, don't block for scaling calculations."
    check_for_norm: "Check to see if data has been normalized, if not, output a warning (TRUE by default)."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
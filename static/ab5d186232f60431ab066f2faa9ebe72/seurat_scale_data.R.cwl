class: CommandLineTool
id: seurat_scale_data.R.cwl
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
- id: in_genes_use
  doc: File with gene names to scale/center (one gene per line). Default is all genes
    in object@data.
  type: File
  inputBinding:
    prefix: --genes-use
- id: in_vars_to_regress
  doc: Comma-separated list of variables to regress out (previously latent.vars in
    RegressOut). For example, nUMI, or percent.mito.
  type: string
  inputBinding:
    prefix: --vars-to-regress
- id: in_model_use
  doc: Use a linear model or generalized linear model (poisson, negative binomial)
    for the regression. Options are 'linear' (default), 'poisson', and 'negbinom'.
  type: string
  inputBinding:
    prefix: --model-use
- id: in_use_umi
  doc: Regress on UMI count data. Default is FALSE for linear modeling, but automatically
    set to TRUE if model.use is 'negbinom' or 'poisson'.
  type: string
  inputBinding:
    prefix: --use-umi
- id: in_do_not_scale
  doc: Skip the data scale.
  type: boolean
  inputBinding:
    prefix: --do-not-scale
- id: in_do_not_center
  doc: Skip data centering.
  type: boolean
  inputBinding:
    prefix: --do-not-center
- id: in_scale_max
  doc: Max value to return for scaled data. The default is 10. Setting this can help
    reduce the effects of genes that are only expressed in a very small number of
    cells. If regressing out latent variables and using a non-linear model, the default
    is 50.
  type: long
  inputBinding:
    prefix: --scale-max
- id: in_block_size
  doc: Default size for number of genes to scale at in a single computation. Increasing
    block.size may speed up calculations but at an additional memory cost.
  type: long
  inputBinding:
    prefix: --block-size
- id: in_min_cells_to_block
  doc: If object contains fewer than this number of cells, don't block for scaling
    calculations.
  type: long
  inputBinding:
    prefix: --min-cells-to-block
- id: in_check_for_norm
  doc: Check to see if data has been normalized, if not, output a warning (TRUE by
    default).
  type: string
  inputBinding:
    prefix: --check-for-norm
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- seurat-scale-data.R

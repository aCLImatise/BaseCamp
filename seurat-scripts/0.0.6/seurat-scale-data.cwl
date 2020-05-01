#!/usr/bin/env cwl-runner

baseCommand:
- seurat-scale-data.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-scale-data.r
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
- doc: File with gene names to scale/center (one gene per line). Default is all genes
    in object@data.
  id: genes_use
  inputBinding:
    prefix: --genes-use
  type: string
- doc: Comma-separated list of variables to regress out (previously latent.vars in
    RegressOut). For example, nUMI, or percent.mito.
  id: vars_to_regress
  inputBinding:
    prefix: --vars-to-regress
  type: string
- doc: Use a linear model or generalized linear model (poisson, negative binomial)
    for the regression. Options are 'linear' (default), 'poisson', and 'negbinom'.
  id: model_use
  inputBinding:
    prefix: --model-use
  type: string
- doc: Regress on UMI count data. Default is FALSE for linear modeling, but automatically
    set to TRUE if model.use is 'negbinom' or 'poisson'.
  id: use_umi
  inputBinding:
    prefix: --use-umi
  type: string
- doc: Skip the data scale.
  id: do_not_scale
  inputBinding:
    prefix: --do-not-scale
  type: boolean
- doc: Skip data centering.
  id: do_not_center
  inputBinding:
    prefix: --do-not-center
  type: boolean
- doc: Max value to return for scaled data. The default is 10. Setting this can help
    reduce the effects of genes that are only expressed in a very small number of
    cells. If regressing out latent variables and using a non-linear model, the default
    is 50.
  id: scale_max
  inputBinding:
    prefix: --scale-max
  type: string
- doc: Default size for number of genes to scale at in a single computation. Increasing
    block.size may speed up calculations but at an additional memory cost.
  id: block_size
  inputBinding:
    prefix: --block-size
  type: string
- doc: If object contains fewer than this number of cells, don't block for scaling
    calculations.
  id: min_cells_to_block
  inputBinding:
    prefix: --min-cells-to-block
  type: long
- doc: Check to see if data has been normalized, if not, output a warning (TRUE by
    default).
  id: check_for_norm
  inputBinding:
    prefix: --check-for-norm
  type: string
- doc: File name in which to store serialized R object of type 'Seurat'.'
  id: output_object_file
  inputBinding:
    prefix: --output-object-file
  type: string

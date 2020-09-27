class: CommandLineTool
id: seurat_run_pca.R.cwl
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
- id: in_pc_genes
  doc: File with gene names to scale/center. Default is all genes in object@data.
  type: File
  inputBinding:
    prefix: --pc-genes
- id: in_pc_cells
  doc: File with cell names to scale/center. Default is all cells in object@data.
  type: File
  inputBinding:
    prefix: --pc-cells
- id: in_pcs_compute
  doc: Total Number of PCs to compute and store (50 by default).
  type: long
  inputBinding:
    prefix: --pcs-compute
- id: in_reverse_pc_a
  doc: By default computes the PCA on the cell x gene matrix. Setting to true will
    compute it on gene x cell matrix.
  type: boolean
  inputBinding:
    prefix: --reverse-pca
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_output_embeddings_file
  doc: File name in which to store a csv-format embeddings table with PCs by cell.
  type: File
  inputBinding:
    prefix: --output-embeddings-file
- id: in_output_loadings_file
  doc: File name in which to store a csv-format loadings table with PCs by gene.
  type: File
  inputBinding:
    prefix: --output-loadings-file
- id: in_output_stdev_file
  doc: File name in which to store PC stdev values (one per line).
  type: File
  inputBinding:
    prefix: --output-stdev-file
- id: in_weight_by_var
  doc: Weight the cell embeddings by the variance of each PC (weights the gene loadings
    if rev.pca is TRUE)
  type: boolean
  inputBinding:
    prefix: --weight-by-var
- id: in_ndims_print
  doc: "OF DIMS. PRINT\nPCs to print genes for"
  type: long
  inputBinding:
    prefix: --ndims-print
- id: in_n_features_print
  doc: "FEATURES PRINT\nNumber of genes to print for each PC"
  type: long
  inputBinding:
    prefix: --nfeatures-print
- id: in_reduction_key
  doc: "KEY\ndimensional reduction key, specifies the string before the number for\
    \ the dimension names. PC by default"
  type: long
  inputBinding:
    prefix: --reduction-key
- id: in_reduction_name
  doc: "NAME\ndimensional reduction name, pca by default"
  type: string
  inputBinding:
    prefix: --reduction-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_embeddings_file
  doc: File name in which to store a csv-format embeddings table with PCs by cell.
  type: File
  outputBinding:
    glob: $(inputs.in_output_embeddings_file)
- id: out_output_loadings_file
  doc: File name in which to store a csv-format loadings table with PCs by gene.
  type: File
  outputBinding:
    glob: $(inputs.in_output_loadings_file)
- id: out_output_stdev_file
  doc: File name in which to store PC stdev values (one per line).
  type: File
  outputBinding:
    glob: $(inputs.in_output_stdev_file)
cwlVersion: v1.1
baseCommand:
- seurat-run-pca.R

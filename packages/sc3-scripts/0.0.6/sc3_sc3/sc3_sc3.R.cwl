class: CommandLineTool
id: sc3_sc3.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_ks
  doc: A comma-separated string or single value representing the number of clusters
    k to be used for SC3 clustering.
  type: long
  inputBinding:
    prefix: --ks
- id: in_gene_filter
  doc: A boolean variable which defines whether to perform gene filtering before SC3
    clustering.
  type: boolean
  inputBinding:
    prefix: --gene-filter
- id: in_pct_dropout_min
  doc: If gene_filter = TRUE, then genes with percent of dropouts smaller than pct_dropout_min
    are filtered out before clustering.
  type: long
  inputBinding:
    prefix: --pct-dropout-min
- id: in_pct_dropout_max
  doc: If gene_filter = TRUE, then genes with percent of dropouts larger than pct_dropout_max
    are filtered out before clustering.
  type: long
  inputBinding:
    prefix: --pct-dropout-max
- id: in_d_region_min
  doc: Defines the minimum number of eigenvectors used for kmeans clustering as a
    fraction of the total number of cells. Default is 0.04. See SC3 paper for more
    details.
  type: long
  inputBinding:
    prefix: --d-region-min
- id: in_d_region_max
  doc: Defines the maximum number of eigenvectors used for kmeans clustering as a
    fraction of the total number of cells. Default is 0.07. See SC3 paper for more
    details.
  type: long
  inputBinding:
    prefix: --d-region-max
- id: in_svm_num_cells
  doc: Number of randomly selected training cells to be used for SVM prediction. Default
    is NULL.
  type: long
  inputBinding:
    prefix: --svm-num-cells
- id: in_svm_train_inds
  doc: Text file with one integer per line. Will be used to create a numeric vector
    defining indices of training cells that should be used for SVM training. The default
    is NULL.
  type: long
  inputBinding:
    prefix: --svm-train-inds
- id: in_svm_max
  doc: Define the maximum number of cells below which SVM are not run.
  type: long
  inputBinding:
    prefix: --svm-max
- id: in_n_cores
  doc: Number of threads/cores to be used in the user's machine.
  type: long
  inputBinding:
    prefix: --n-cores
- id: in_k_means_n_start
  doc: nstart parameter passed to kmeans function. Default is 1000 for up to 2000
    cells and 50 for more than 2000 cells.
  type: long
  inputBinding:
    prefix: --kmeans-nstart
- id: in_k_means_iter_max
  doc: iter.max parameter passed to kmeans function. Default is 1e+09.
  type: long
  inputBinding:
    prefix: --kmeans-iter-max
- id: in_k_estimator
  doc: A boolean variable which defines whether to estimate an optimal number of clusters.
    If user has already defined the ks parameter the estimation does not affect the
    user's paramater.
  type: boolean
  inputBinding:
    prefix: --k_estimator
- id: in_biology
  doc: A boolean variable which defines whether to compute differentially expressed
    genes, marker genes and cell outliers.
  type: boolean
  inputBinding:
    prefix: --biology
- id: in_rand_seed
  doc: sets the seed of the random number generator. SC3 is a stochastic method, so
    setting the rand_seed to a fixed values can be used for reproducibility purposes.
  type: long
  inputBinding:
    prefix: --rand-seed
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- sc3-sc3.R

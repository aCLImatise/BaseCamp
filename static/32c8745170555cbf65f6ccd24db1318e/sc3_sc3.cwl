class: CommandLineTool
id: sc3_sc3.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object where object
    matrix found
  type: string
  inputBinding:
    prefix: --input-object-file
- id: ks
  doc: A comma-separated string or single value representing the number of clusters
    k to be used for SC3 clustering.
  type: string
  inputBinding:
    prefix: --ks
- id: gene_filter
  doc: A boolean variable which defines whether to perform gene filtering before SC3
    clustering.
  type: string
  inputBinding:
    prefix: --gene-filter
- id: pct_dropout_min
  doc: If gene_filter = TRUE, then genes with percent of dropouts smaller than pct_dropout_min
    are filtered out before clustering.
  type: string
  inputBinding:
    prefix: --pct-dropout-min
- id: pct_dropout_max
  doc: If gene_filter = TRUE, then genes with percent of dropouts larger than pct_dropout_max
    are filtered out before clustering.
  type: string
  inputBinding:
    prefix: --pct-dropout-max
- id: d_region_min
  doc: Defines the minimum number of eigenvectors used for kmeans clustering as a
    fraction of the total number of cells. Default is 0.04. See SC3 paper for more
    details.
  type: string
  inputBinding:
    prefix: --d-region-min
- id: d_region_max
  doc: Defines the maximum number of eigenvectors used for kmeans clustering as a
    fraction of the total number of cells. Default is 0.07. See SC3 paper for more
    details.
  type: string
  inputBinding:
    prefix: --d-region-max
- id: svm_num_cells
  doc: Number of randomly selected training cells to be used for SVM prediction. Default
    is NULL.
  type: string
  inputBinding:
    prefix: --svm-num-cells
- id: svm_train_inds
  doc: Text file with one integer per line. Will be used to create a numeric vector
    defining indices of training cells that should be used for SVM training. The default
    is NULL.
  type: string
  inputBinding:
    prefix: --svm-train-inds
- id: svm_max
  doc: Define the maximum number of cells below which SVM are not run.
  type: string
  inputBinding:
    prefix: --svm-max
- id: n_cores
  doc: Number of threads/cores to be used in the user's machine.
  type: string
  inputBinding:
    prefix: --n-cores
- id: k_means_n_start
  doc: nstart parameter passed to kmeans function. Default is 1000 for up to 2000
    cells and 50 for more than 2000 cells.
  type: string
  inputBinding:
    prefix: --kmeans-nstart
- id: k_means_iter_max
  doc: iter.max parameter passed to kmeans function. Default is 1e+09.
  type: string
  inputBinding:
    prefix: --kmeans-iter-max
- id: k_estimator
  doc: A boolean variable which defines whether to estimate an optimal number of clusters.
    If user has already defined the ks parameter the estimation does not affect the
    user's paramater.
  type: string
  inputBinding:
    prefix: --k_estimator
- id: biology
  doc: A boolean variable which defines whether to compute differentially expressed
    genes, marker genes and cell outliers.
  type: string
  inputBinding:
    prefix: --biology
- id: rand_seed
  doc: sets the seed of the random number generator. SC3 is a stochastic method, so
    setting the rand_seed to a fixed values can be used for reproducibility purposes.
  type: string
  inputBinding:
    prefix: --rand-seed
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3.R

version 1.0

task Sc3sc3prepareR {
  input {
    File? input_object_file
    Boolean? gene_filter
    Int? pct_dropout_min
    Int? pct_dropout_max
    Int? d_region_min
    Int? d_region_max
    Int? svm_num_cells
    Int? svm_train_inds
    Int? svm_max
    Int? n_cores
    Int? rand_seed
    Int? k_means_n_start
    Int? k_means_iter_max
    File? output_object_file
  }
  command <<<
    sc3_sc3_prepare_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(gene_filter) then ("--gene-filter " +  '"' + gene_filter + '"') else ""} \
      ~{if defined(pct_dropout_min) then ("--pct-dropout-min " +  '"' + pct_dropout_min + '"') else ""} \
      ~{if defined(pct_dropout_max) then ("--pct-dropout-max " +  '"' + pct_dropout_max + '"') else ""} \
      ~{if defined(d_region_min) then ("--d-region-min " +  '"' + d_region_min + '"') else ""} \
      ~{if defined(d_region_max) then ("--d-region-max " +  '"' + d_region_max + '"') else ""} \
      ~{if defined(svm_num_cells) then ("--svm-num-cells " +  '"' + svm_num_cells + '"') else ""} \
      ~{if defined(svm_train_inds) then ("--svm-train-inds " +  '"' + svm_train_inds + '"') else ""} \
      ~{if defined(svm_max) then ("--svm-max " +  '"' + svm_max + '"') else ""} \
      ~{if defined(n_cores) then ("--n-cores " +  '"' + n_cores + '"') else ""} \
      ~{if defined(rand_seed) then ("--rand-seed " +  '"' + rand_seed + '"') else ""} \
      ~{if defined(k_means_n_start) then ("--kmeans-nstart " +  '"' + k_means_n_start + '"') else ""} \
      ~{if defined(k_means_iter_max) then ("--kmeans-iter-max " +  '"' + k_means_iter_max + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object where object matrix found"
    gene_filter: "A boolean variable which defines whether to perform gene filtering before SC3 clustering."
    pct_dropout_min: "If gene_filter = TRUE, then genes with percent of dropouts smaller than pct_dropout_min are filtered out before clustering."
    pct_dropout_max: "If gene_filter = TRUE, then genes with percent of dropouts larger than pct_dropout_max are filtered out before clustering."
    d_region_min: "Defines the minimum number of eigenvectors used for kmeans clustering as a fraction of the total number of cells. Default is 0.04. See SC3 paper for more details."
    d_region_max: "Defines the maximum number of eigenvectors used for kmeans clustering as a fraction of the total number of cells. Default is 0.07. See SC3 paper for more details."
    svm_num_cells: "Number of randomly selected training cells to be used for SVM prediction. Default is NULL."
    svm_train_inds: "Text file with one integer per line. Will be used to create a numeric vector defining indices of training cells that should be used for SVM training. The default is NULL."
    svm_max: "Define the maximum number of cells below which SVM are not run."
    n_cores: "Number of threads/cores to be used in the user's machine."
    rand_seed: "sets the seed of the random number generator. SC3 is a stochastic method, so setting the rand_seed to a fixed values can be used for reproducibility purposes."
    k_means_n_start: "nstart parameter passed to kmeans function. Default is 1000 for up to 2000 cells and 50 for more than 2000 cells."
    k_means_iter_max: "iter.max parameter passed to kmeans function. Default is 1e+09."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'.'"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
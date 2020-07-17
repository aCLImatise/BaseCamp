version 1.0

task Percolator {
  input {
    String? fido_grid_search_mse_threshold
    String? nested_xval_bins
    String? spectral_counting_fdr
    Boolean? train_best_positive
    String? train_fdr_initial
    File? parameter_file
    String? x
    String? other
    String pin_dot_tsv
  }
  command <<<
    percolator \
      ~{other} \
      ~{pin_dot_tsv} \
      ~{if defined(fido_grid_search_mse_threshold) then ("--fido-gridsearch-mse-threshold " +  '"' + fido_grid_search_mse_threshold + '"') else ""} \
      ~{if defined(nested_xval_bins) then ("--nested-xval-bins " +  '"' + nested_xval_bins + '"') else ""} \
      ~{if defined(spectral_counting_fdr) then ("--spectral-counting-fdr " +  '"' + spectral_counting_fdr + '"') else ""} \
      ~{true="--train-best-positive" false="" train_best_positive} \
      ~{if defined(train_fdr_initial) then ("--train-fdr-initial " +  '"' + train_fdr_initial + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameter-file " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(x) then ("-X " +  '"' + x + '"') else ""}
  >>>
  parameter_meta {
    fido_grid_search_mse_threshold: "Q-value threshold that will be  used in the computation of the MSE  and ROC AUC score in the grid  search. Recommended 0.05 for  normal size datasets and 0.1 for  large datasets. Default = 0.1"
    nested_xval_bins: "Number of nested cross validation  bins within each cross validation  bin. This should reduce  overfitting of the  hyperparameters. Default = 1."
    spectral_counting_fdr: "Activates spectral counting on  protein level (either  --fido-protein or --picked-protein  has to be set) at the specified  PSM q-value threshold. Adds two  columns, \"spec_count_unique\" and  \"spec_count_all\", to the protein  tab separated output, containing  the spectral count for the  peptides unique to the protein and  the spectral count including  shared peptides respectively."
    train_best_positive: "Enforce that, for each spectrum,  at most one PSM is included in the  positive set during each training  iteration. If the user only  provides one PSM per spectrum,  this filter will have no effect."
    train_fdr_initial: "Set the FDR threshold for the  first iteration. This is useful in  cases where the original features  do not display a good separation  between targets and decoys. In  subsequent iterations, the normal  --trainFDR will be used."
    parameter_file: "Read flags from a parameter file.  If flags are specified on the  command line as well, these will  override the ones in the parameter  file."
    x: ""
    other: ""
    pin_dot_tsv: ""
  }
}
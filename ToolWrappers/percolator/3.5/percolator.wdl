version 1.0

task Percolator {
  input {
    Int? num_threads
    Int? nested_xval_bins
    String? spectral_counting_fdr
    Boolean? train_best_positive
    String? train_fdr_initial
    File? parameter_file
    String? x
    String? other
  }
  command <<<
    percolator \
      ~{other} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(nested_xval_bins) then ("--nested-xval-bins " +  '"' + nested_xval_bins + '"') else ""} \
      ~{if defined(spectral_counting_fdr) then ("--spectral-counting-fdr " +  '"' + spectral_counting_fdr + '"') else ""} \
      ~{if (train_best_positive) then "--train-best-positive" else ""} \
      ~{if defined(train_fdr_initial) then ("--train-fdr-initial " +  '"' + train_fdr_initial + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameter-file " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(x) then ("-X " +  '"' + x + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "Number of total parallel threads\\nfor SVM training during cross\\nvalidation. Default (one thread\\nper CV fold) = 3."
    nested_xval_bins: "Number of nested cross validation\\nbins within each cross validation\\nbin. This should reduce\\noverfitting of the\\nhyperparameters. Default = 1."
    spectral_counting_fdr: "Activates spectral counting on\\nprotein level (either\\n--fido-protein or --picked-protein\\nhas to be set) at the specified\\nPSM q-value threshold. Adds two\\ncolumns, \\\"spec_count_unique\\\" and\\n\\\"spec_count_all\\\", to the protein\\ntab separated output, containing\\nthe spectral count for the\\npeptides unique to the protein and\\nthe spectral count including\\nshared peptides respectively."
    train_best_positive: "Enforce that, for each spectrum,\\nat most one PSM is included in the\\npositive set during each training\\niteration. If the user only\\nprovides one PSM per spectrum,\\nthis filter will have no effect."
    train_fdr_initial: "Set the FDR threshold for the\\nfirst iteration. This is useful in\\ncases where the original features\\ndo not display a good separation\\nbetween targets and decoys. In\\nsubsequent iterations, the normal\\n--trainFDR will be used."
    parameter_file: "Read flags from a parameter file.\\nIf flags are specified on the\\ncommand line as well, these will\\noverride the ones in the parameter\\nfile.\\n"
    x: ""
    other: ""
  }
  output {
    File out_stdout = stdout()
  }
}
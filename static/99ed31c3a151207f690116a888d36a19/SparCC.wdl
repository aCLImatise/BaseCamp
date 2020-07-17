version 1.0

task SparCC.py {
  input {
    String? cor_file
    String? cov_file
    String? algo
    String? iter
    String? x_iter
    String? the_rs_hold
    String compute
    String the
    String correlation
    String between
    String components
  }
  command <<<
    SparCC.py \
      ~{compute} \
      ~{the} \
      ~{correlation} \
      ~{between} \
      ~{components} \
      ~{if defined(cor_file) then ("--cor_file " +  '"' + cor_file + '"') else ""} \
      ~{if defined(cov_file) then ("--cov_file " +  '"' + cov_file + '"') else ""} \
      ~{if defined(algo) then ("--algo " +  '"' + algo + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if defined(x_iter) then ("--xiter " +  '"' + x_iter + '"') else ""} \
      ~{if defined(the_rs_hold) then ("--thershold " +  '"' + the_rs_hold + '"') else ""}
  >>>
  parameter_meta {
    cor_file: "File to which correlation matrix will be written."
    cov_file: "File to which covariance matrix will be written."
    algo: "Name of algorithm used to compute correlations (SparCC (default) | pearson | spearman | kendall)"
    iter: "Number of inference iterations to average over (20 default)."
    x_iter: "Number of exclusion iterations to remove strongly correlated pairs (10 default)."
    the_rs_hold: "Correlation strength exclusion threshold (0.1 default)."
    compute: ""
    the: ""
    correlation: ""
    between: ""
    components: ""
  }
}
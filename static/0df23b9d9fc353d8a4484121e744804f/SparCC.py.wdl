version 1.0

task SparCCpy {
  input {
    File? cor_file
    File? cov_file
    String? algo
    Int? iter
    Int? x_iter
    Float? the_rs_hold
    String compute
    String counts_file
    String the
    String correlation
    String between
    String components
  }
  command <<<
    SparCC_py \
      ~{compute} \
      ~{counts_file} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    cor_file: "File to which correlation matrix will be written."
    cov_file: "File to which covariance matrix will be written."
    algo: "Name of algorithm used to compute correlations (SparCC\\n(default) | pearson | spearman | kendall)"
    iter: "Number of inference iterations to average over (20\\ndefault)."
    x_iter: "Number of exclusion iterations to remove strongly\\ncorrelated pairs (10 default)."
    the_rs_hold: "Correlation strength exclusion threshold (0.1\\ndefault).\\n"
    compute: ""
    counts_file: ""
    the: ""
    correlation: ""
    between: ""
    components: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Computeuniformpriors {
  input {
    String compute_uniform_prior
    String? prior_value
    File psp_file
  }
  command <<<
    compute_uniform_priors \
      ~{compute_uniform_prior} \
      ~{prior_value} \
      ~{psp_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    compute_uniform_prior: ""
    prior_value: ""
    psp_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
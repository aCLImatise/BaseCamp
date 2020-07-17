version 1.0

task ComputeUniformPriors {
  input {
    String compute_uniform_prior
    String? prior_value
    String psp_file
  }
  command <<<
    compute-uniform-priors \
      ~{compute_uniform_prior} \
      ~{prior_value} \
      ~{psp_file}
  >>>
  parameter_meta {
    compute_uniform_prior: ""
    prior_value: ""
    psp_file: ""
  }
}
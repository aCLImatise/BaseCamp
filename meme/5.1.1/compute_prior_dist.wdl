version 1.0

task Computepriordist {
  input {
    Int num_bins
    File psp_file
  }
  command <<<
    compute_prior_dist \
      ~{num_bins} \
      ~{psp_file}
  >>>
  parameter_meta {
    num_bins: ""
    psp_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ComputePriorDist {
  input {
    String num_bins
    String psp_file
  }
  command <<<
    compute-prior-dist \
      ~{num_bins} \
      ~{psp_file}
  >>>
  parameter_meta {
    num_bins: ""
    psp_file: ""
  }
}
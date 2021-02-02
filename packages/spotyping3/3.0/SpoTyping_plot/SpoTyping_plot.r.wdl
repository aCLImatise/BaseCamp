version 1.0

task SpoTypingPlotr {
  input {
    String nobs
    Int object_dot_size
    String starts_with
  }
  command <<<
    SpoTyping_plot_r \
      ~{nobs} \
      ~{object_dot_size} \
      ~{starts_with}
  >>>
  parameter_meta {
    nobs: "The following object is masked from 'package:utils':"
    object_dot_size: "The following object is masked from 'package:base':"
    starts_with: "Error in findPerl(verbose = verbose) : "
  }
  output {
    File out_stdout = stdout()
  }
}
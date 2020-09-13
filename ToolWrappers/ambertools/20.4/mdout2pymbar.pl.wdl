version 1.0

task Mdout2pymbarpl {
  input {
    Float zero_dot_zero_zero_zero_zero
  }
  command <<<
    mdout2pymbar_pl \
      ~{zero_dot_zero_zero_zero_zero}
  >>>
  parameter_meta {
    zero_dot_zero_zero_zero_zero: "0.000000   1.0000000e+00"
  }
  output {
    File out_stdout = stdout()
  }
}
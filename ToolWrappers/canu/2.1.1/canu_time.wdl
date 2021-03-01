version 1.0

task Canutime {
  input {
    Float zero_dot_zero_zero
  }
  command <<<
    canu_time \
      ~{zero_dot_zero_zero}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    zero_dot_zero_zero: "0.00      0.00     0.000     0.000   Sat Nov 20 17:46:39 2286   Thu Jan  1 00:00:00 1970    0.00"
  }
  output {
    File out_stdout = stdout()
  }
}
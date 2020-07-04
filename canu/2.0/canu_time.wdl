version 1.0

task CanuTime {
  input {
    String zero_dot_zero_zero
  }
  command <<<
    canu-time \
      ~{zero_dot_zero_zero}
  >>>
  parameter_meta {
    zero_dot_zero_zero: "0.00      0.00     0.000     0.000 -2777777.78   Sat Nov 20 17:46:39 2286   Thu Jan  1 00:00:00 1970"
  }
}
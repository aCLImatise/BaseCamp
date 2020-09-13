version 1.0

task N50 {
  input {
    Int n_five_zero_dot
    String line_dot
    Int test_two_dot_fa
    String reads_dot_fa
    String small_dot_fa
  }
  command <<<
    n50 \
      ~{n_five_zero_dot} \
      ~{line_dot} \
      ~{test_two_dot_fa} \
      ~{reads_dot_fa} \
      ~{small_dot_fa}
  >>>
  parameter_meta {
    n_five_zero_dot: "*-b, --basename*"
    line_dot: "*-n, --nonewline*"
    test_two_dot_fa: "8     825   189   4     256"
    reads_dot_fa: "5     247   100   6     102"
    small_dot_fa: "6     130   65    4     65"
  }
  output {
    File out_stdout = stdout()
  }
}
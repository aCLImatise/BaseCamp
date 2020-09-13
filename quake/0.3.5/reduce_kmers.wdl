version 1.0

task Reducekmers {
  input {
    Boolean? five_five_four_eight_zero_seven_two_four_zero
  }
  command <<<
    reduce_kmers \
      ~{if (five_five_four_eight_zero_seven_two_four_zero) then "-554807240" else ""}
  >>>
  parameter_meta {
    five_five_four_eight_zero_seven_two_four_zero: ""
  }
  output {
    File out_stdout = stdout()
  }
}
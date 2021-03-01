version 1.0

task KtGetTaxIDFromAcc {
  input {
    Float a_zero_zero_zero_zero_one_dot_one
    String var_command
    String fast_a
    Int? acc_two
    String grep
    String line
    String tag
    String example
  }
  command <<<
    ktGetTaxIDFromAcc \
      ~{a_zero_zero_zero_zero_one_dot_one} \
      ~{var_command} \
      ~{fast_a} \
      ~{acc_two} \
      ~{grep} \
      ~{line} \
      ~{tag} \
      ~{example}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  parameter_meta {
    a_zero_zero_zero_zero_one_dot_one: ""
    var_command: ""
    fast_a: ""
    acc_two: ""
    grep: ""
    line: ""
    tag: ""
    example: ""
  }
  output {
    File out_stdout = stdout()
  }
}
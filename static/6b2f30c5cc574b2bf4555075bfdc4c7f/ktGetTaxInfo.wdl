version 1.0

task KtGetTaxInfo {
  input {
    Float a_zero_zero_zero_zero_one_dot_one
    String var_command
    String fast_a
    String? ids
    String grep
    String line
    String tag
    String example
  }
  command <<<
    ktGetTaxInfo \
      ~{a_zero_zero_zero_zero_one_dot_one} \
      ~{var_command} \
      ~{fast_a} \
      ~{ids} \
      ~{grep} \
      ~{line} \
      ~{tag} \
      ~{example}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_zero_zero_zero_zero_one_dot_one: ""
    var_command: ""
    fast_a: ""
    ids: ""
    grep: ""
    line: ""
    tag: ""
    example: ""
  }
  output {
    File out_stdout = stdout()
  }
}
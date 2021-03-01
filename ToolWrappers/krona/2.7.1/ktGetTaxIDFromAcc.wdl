version 1.0

task KtGetTaxIDFromAcc {
  input {
    Boolean? prepend_tax_ids
    Boolean? append_tax_ids
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
      ~{example} \
      ~{if (prepend_tax_ids) then "-p" else ""} \
      ~{if (append_tax_ids) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prepend_tax_ids: "Prepend tax IDs to the original lines (separated by tabs)."
    append_tax_ids: "Append tax IDs to the original lines (separated by tabs)."
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
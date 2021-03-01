version 1.0

task Cmph5toolspyEqual {
  input {
    Float cmp_doth_five_dot_one
    Float cmp_doth_five_dot_two
  }
  command <<<
    cmph5tools_py equal \
      ~{cmp_doth_five_dot_one} \
      ~{cmp_doth_five_dot_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cmp_doth_five_dot_one: "filename 1"
    cmp_doth_five_dot_two: "filename 2"
  }
  output {
    File out_stdout = stdout()
  }
}
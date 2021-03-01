version 1.0

task ChopFaLines {
  input {
    String in_dot_fa
  }
  command <<<
    chopFaLines \
      ~{in_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
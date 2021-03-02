version 1.0

task FaOneRecord {
  input {
    String in_dot_fa
  }
  command <<<
    faOneRecord \
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
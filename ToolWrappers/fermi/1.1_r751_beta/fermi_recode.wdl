version 1.0

task FermiRecode {
  input {
    String in_dot_rld
  }
  command <<<
    fermi recode \
      ~{in_dot_rld}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_rld: ""
  }
  output {
    File out_stdout = stdout()
  }
}
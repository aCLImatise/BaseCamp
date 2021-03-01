version 1.0

task OrthomclReduceFasta {
  input {
    String fast_a_file
  }
  command <<<
    orthomclReduceFasta \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
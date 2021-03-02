version 1.0

task Purge {
  input {
    File var_file
    String score
    String options
  }
  command <<<
    purge \
      ~{var_file} \
      ~{score} \
      ~{options}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
    score: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
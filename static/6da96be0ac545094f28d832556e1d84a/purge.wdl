version 1.0

task Purge {
  input {
    File file
    String score
    String options
  }
  command <<<
    purge \
      ~{file} \
      ~{score} \
      ~{options}
  >>>
  parameter_meta {
    file: ""
    score: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
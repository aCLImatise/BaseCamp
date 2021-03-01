version 1.0

task LynerRead {
  input {
    String matrix
  }
  command <<<
    lyner read \
      ~{matrix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}
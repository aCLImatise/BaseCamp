version 1.0

task LynerRead {
  input {
    String matrix
  }
  command <<<
    lyner read \
      ~{matrix}
  >>>
  parameter_meta {
    matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}
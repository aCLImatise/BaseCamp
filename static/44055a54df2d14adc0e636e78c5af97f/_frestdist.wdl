version 1.0

task Frestdist {
  command <<<
    _frestdist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Geecee {
  command <<<
    _geecee
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
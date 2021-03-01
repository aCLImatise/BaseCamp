version 1.0

task Primersearch {
  command <<<
    _primersearch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Tfextract {
  command <<<
    _tfextract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Bwtbuilder {
  command <<<
    _bwt_builder
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
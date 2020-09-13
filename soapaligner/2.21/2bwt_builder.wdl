version 1.0

task Bwtbuilder {
  command <<<
    _bwt_builder
  >>>
  output {
    File out_stdout = stdout()
  }
}
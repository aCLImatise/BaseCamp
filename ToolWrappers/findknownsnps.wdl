version 1.0

task Findknownsnps {
  command <<<
    findknownsnps
  >>>
  output {
    File out_stdout = stdout()
  }
}
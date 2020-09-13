version 1.0

task Smoove {
  command <<<
    smoove
  >>>
  output {
    File out_stdout = stdout()
  }
}
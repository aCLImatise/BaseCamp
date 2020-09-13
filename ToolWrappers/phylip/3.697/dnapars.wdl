version 1.0

task Dnapars {
  command <<<
    dnapars
  >>>
  output {
    File out_stdout = stdout()
  }
}
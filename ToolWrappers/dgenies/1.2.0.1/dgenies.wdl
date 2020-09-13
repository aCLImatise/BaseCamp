version 1.0

task Dgenies {
  command <<<
    dgenies
  >>>
  output {
    File out_stdout = stdout()
  }
}
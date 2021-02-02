version 1.0

task Beauti {
  command <<<
    beauti
  >>>
  output {
    File out_stdout = stdout()
  }
}
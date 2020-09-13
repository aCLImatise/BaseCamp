version 1.0

task Groopm {
  command <<<
    groopm
  >>>
  output {
    File out_stdout = stdout()
  }
}
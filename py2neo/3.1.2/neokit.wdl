version 1.0

task Neokit {
  command <<<
    neokit
  >>>
  output {
    File out_stdout = stdout()
  }
}
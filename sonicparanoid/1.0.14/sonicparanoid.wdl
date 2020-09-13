version 1.0

task Sonicparanoid {
  command <<<
    sonicparanoid
  >>>
  output {
    File out_stdout = stdout()
  }
}
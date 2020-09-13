version 1.0

task Multijob {
  command <<<
    multijob
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Seedtop {
  command <<<
    seedtop
  >>>
  output {
    File out_stdout = stdout()
  }
}
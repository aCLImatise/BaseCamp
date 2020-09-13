version 1.0

task Ghm {
  command <<<
    ghm
  >>>
  output {
    File out_stdout = stdout()
  }
}
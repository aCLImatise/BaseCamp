version 1.0

task Gomod {
  command <<<
    go_mod
  >>>
  output {
    File out_stdout = stdout()
  }
}
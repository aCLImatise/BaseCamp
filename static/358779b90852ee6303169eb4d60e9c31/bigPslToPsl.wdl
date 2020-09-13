version 1.0

task BigPslToPsl {
  command <<<
    bigPslToPsl
  >>>
  output {
    File out_stdout = stdout()
  }
}
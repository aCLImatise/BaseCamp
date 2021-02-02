version 1.0

task Pair2tb {
  command <<<
    pair2tb
  >>>
  output {
    File out_stdout = stdout()
  }
}
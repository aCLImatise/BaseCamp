version 1.0

task Bamsplitdiv {
  command <<<
    bamsplitdiv
  >>>
  output {
    File out_stdout = stdout()
  }
}
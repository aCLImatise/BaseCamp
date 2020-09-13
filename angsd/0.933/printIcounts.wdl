version 1.0

task PrintIcounts {
  command <<<
    printIcounts
  >>>
  output {
    File out_stdout = stdout()
  }
}
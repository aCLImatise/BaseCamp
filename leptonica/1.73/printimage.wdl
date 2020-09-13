version 1.0

task Printimage {
  command <<<
    printimage
  >>>
  output {
    File out_stdout = stdout()
  }
}
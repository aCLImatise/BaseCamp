version 1.0

task Splitimage2pdf {
  command <<<
    splitimage2pdf
  >>>
  output {
    File out_stdout = stdout()
  }
}
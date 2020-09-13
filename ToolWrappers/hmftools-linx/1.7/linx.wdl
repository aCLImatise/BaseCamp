version 1.0

task Linx {
  command <<<
    linx
  >>>
  output {
    File out_stdout = stdout()
  }
}
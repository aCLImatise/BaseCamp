version 1.0

task Mdoc {
  command <<<
    mdoc
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Ctgvalidate {
  command <<<
    ctgvalidate
  >>>
  output {
    File out_stdout = stdout()
  }
}
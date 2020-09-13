version 1.0

task Secapr {
  command <<<
    secapr
  >>>
  output {
    File out_stdout = stdout()
  }
}
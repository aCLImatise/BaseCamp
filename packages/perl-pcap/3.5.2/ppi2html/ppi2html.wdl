version 1.0

task Ppi2html {
  command <<<
    ppi2html
  >>>
  output {
    File out_stdout = stdout()
  }
}
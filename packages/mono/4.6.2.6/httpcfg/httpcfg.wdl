version 1.0

task Httpcfg {
  command <<<
    httpcfg
  >>>
  output {
    File out_stdout = stdout()
  }
}
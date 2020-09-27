version 1.0

task Ps2pdf13Options {
  command <<<
    ps2pdf13 options___
  >>>
  output {
    File out_stdout = stdout()
  }
}
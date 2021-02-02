version 1.0

task Ps2pdf12Options {
  command <<<
    ps2pdf12 options___
  >>>
  output {
    File out_stdout = stdout()
  }
}
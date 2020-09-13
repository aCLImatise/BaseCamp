version 1.0

task Bbwrapsh {
  command <<<
    bbwrap_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}
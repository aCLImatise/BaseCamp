version 1.0

task Linpl {
  command <<<
    lin_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
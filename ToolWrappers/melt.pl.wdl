version 1.0

task Meltpl {
  command <<<
    melt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
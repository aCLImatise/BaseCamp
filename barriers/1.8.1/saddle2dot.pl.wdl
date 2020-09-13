version 1.0

task Saddle2dotpl {
  command <<<
    saddle2dot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
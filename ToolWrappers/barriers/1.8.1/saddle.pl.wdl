version 1.0

task Saddlepl {
  command <<<
    saddle_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
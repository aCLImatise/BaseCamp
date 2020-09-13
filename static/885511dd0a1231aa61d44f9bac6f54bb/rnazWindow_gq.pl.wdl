version 1.0

task RnazWindowGqpl {
  command <<<
    rnazWindow_gq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
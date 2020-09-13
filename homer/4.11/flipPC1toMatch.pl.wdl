version 1.0

task FlipPC1toMatchpl {
  command <<<
    flipPC1toMatch_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
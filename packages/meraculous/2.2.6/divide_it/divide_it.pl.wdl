version 1.0

task DivideItpl {
  command <<<
    divide_it_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
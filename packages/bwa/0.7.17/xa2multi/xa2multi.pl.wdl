version 1.0

task Xa2multipl {
  command <<<
    xa2multi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Bed62bed12pl {
  command <<<
    bed62bed12_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
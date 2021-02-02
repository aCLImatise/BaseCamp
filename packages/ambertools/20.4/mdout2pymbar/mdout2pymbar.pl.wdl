version 1.0

task Mdout2pymbarpl {
  command <<<
    mdout2pymbar_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
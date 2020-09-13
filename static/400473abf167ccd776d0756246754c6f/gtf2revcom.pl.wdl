version 1.0

task Gtf2revcompl {
  command <<<
    gtf2revcom_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Gtf2genetab {
  command <<<
    gtf2genetab
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Crossratespl {
  command <<<
    crossrates_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
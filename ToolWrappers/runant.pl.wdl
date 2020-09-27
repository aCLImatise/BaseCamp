version 1.0

task Runantpl {
  command <<<
    runant_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
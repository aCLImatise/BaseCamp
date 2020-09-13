version 1.0

task Impute2chromopainterpl {
  command <<<
    impute2chromopainter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
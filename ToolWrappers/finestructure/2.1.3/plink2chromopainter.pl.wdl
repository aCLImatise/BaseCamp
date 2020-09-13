version 1.0

task Plink2chromopainterpl {
  command <<<
    plink2chromopainter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
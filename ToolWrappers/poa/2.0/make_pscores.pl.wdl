version 1.0

task MakePscorespl {
  command <<<
    make_pscores_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task MakePscorespl {
  command <<<
    make_pscores_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
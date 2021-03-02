version 1.0

task Characterizerpl {
  command <<<
    characterizer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
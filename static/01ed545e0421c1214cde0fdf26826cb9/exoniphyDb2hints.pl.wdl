version 1.0

task ExoniphyDb2hintspl {
  command <<<
    exoniphyDb2hints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
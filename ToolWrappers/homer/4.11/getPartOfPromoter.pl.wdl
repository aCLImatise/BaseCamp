version 1.0

task GetPartOfPromoterpl {
  command <<<
    getPartOfPromoter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
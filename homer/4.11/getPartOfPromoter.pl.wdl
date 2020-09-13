version 1.0

task GetPartOfPromoterpl {
  command <<<
    getPartOfPromoter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
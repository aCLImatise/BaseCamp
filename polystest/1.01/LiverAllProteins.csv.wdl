version 1.0

task LiverAllProteinscsv {
  command <<<
    LiverAllProteins_csv
  >>>
  output {
    File out_stdout = stdout()
  }
}
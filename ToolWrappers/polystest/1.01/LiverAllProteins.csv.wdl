version 1.0

task LiverAllProteinscsv {
  command <<<
    LiverAllProteins_csv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
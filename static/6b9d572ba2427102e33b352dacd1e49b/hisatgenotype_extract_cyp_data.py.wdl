version 1.0

task HisatgenotypeExtractCypDatapy {
  command <<<
    hisatgenotype_extract_cyp_data_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
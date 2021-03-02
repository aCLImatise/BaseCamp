version 1.0

task InsilicoReadNormalizationpl {
  command <<<
    insilico_read_normalization_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
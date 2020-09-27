version 1.0

task InsilicoReadNormalizationpl {
  command <<<
    insilico_read_normalization_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
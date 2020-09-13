version 1.0

task Proteasestsv {
  command <<<
    proteases_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Proteasestsv {
  command <<<
    proteases_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ExtractOmixonHLApy {
  command <<<
    extract_Omixon_HLA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
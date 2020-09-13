version 1.0

task ExtractOmixonHLApy {
  command <<<
    extract_Omixon_HLA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
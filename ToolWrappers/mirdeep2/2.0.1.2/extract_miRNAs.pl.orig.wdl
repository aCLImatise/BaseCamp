version 1.0

task ExtractMiRNAsplorig {
  command <<<
    extract_miRNAs_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}
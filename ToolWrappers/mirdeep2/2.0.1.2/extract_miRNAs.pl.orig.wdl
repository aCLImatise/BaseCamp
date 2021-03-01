version 1.0

task ExtractMiRNAsplorig {
  command <<<
    extract_miRNAs_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
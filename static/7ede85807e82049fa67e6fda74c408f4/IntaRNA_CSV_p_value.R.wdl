version 1.0

task IntaRNACSVPvalueR {
  command <<<
    IntaRNA_CSV_p_value_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
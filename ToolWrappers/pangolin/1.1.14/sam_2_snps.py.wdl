version 1.0

task Sam2Snpspy {
  command <<<
    sam_2_snps_py
  >>>
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ExtractHbvFromFastash {
  command <<<
    extract_hbv_from_fasta_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}
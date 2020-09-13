version 1.0

task Convertfastatov2pl {
  command <<<
    convert_fasta_to_v2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
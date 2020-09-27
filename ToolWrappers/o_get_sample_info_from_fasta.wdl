version 1.0

task Ogetsampleinfofromfasta {
  command <<<
    o_get_sample_info_from_fasta
  >>>
  output {
    File out_stdout = stdout()
  }
}
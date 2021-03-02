version 1.0

task Ogetsampleinfofromfasta {
  command <<<
    o_get_sample_info_from_fasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
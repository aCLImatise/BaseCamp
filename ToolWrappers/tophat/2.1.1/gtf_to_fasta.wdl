version 1.0

task GtfToFasta {
  input {
    String transcripts_dot_gtf
    String genome_dot_fa
    String out_file
  }
  command <<<
    gtf_to_fasta \
      ~{transcripts_dot_gtf} \
      ~{genome_dot_fa} \
      ~{out_file}
  >>>
  parameter_meta {
    transcripts_dot_gtf: ""
    genome_dot_fa: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
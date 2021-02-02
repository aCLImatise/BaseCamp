version 1.0

task Contig2contigSeqfile {
  input {
    String contig_file
    String out_contig_file
  }
  command <<<
    contig2contig seqfile \
      ~{contig_file} \
      ~{out_contig_file}
  >>>
  parameter_meta {
    contig_file: ""
    out_contig_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
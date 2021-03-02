version 1.0

task FunannotateClean {
  input {
    Boolean? multifasta_genome_file
    File? out
    Boolean? p_ident
    Boolean? cov
    Boolean? min_len
    Boolean? exhaustive
    String arguments
  }
  command <<<
    funannotate clean \
      ~{arguments} \
      ~{if (multifasta_genome_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (p_ident) then "--pident" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if (min_len) then "--minlen" else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    multifasta_genome_file: "Multi-fasta genome file (Required)"
    out: "Cleaned multi-fasta output file (Required)"
    p_ident: "Percent identity of overlap. Default = 95"
    cov: "Percent coverage of overlap. Default = 95"
    min_len: "Minimum length of contig to keep. Default = 500"
    exhaustive: "Test every contig. Default is to stop at N50 value."
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
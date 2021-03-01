version 1.0

task ReadSeqQualitytrim {
  input {
    Boolean? fast_q_out
    Boolean? illumina
    Boolean? less_than
    Int? min_seq_length
    String usage
  }
  command <<<
    ReadSeq quality_trim \
      ~{usage} \
      ~{if (fast_q_out) then "--fastq-out" else ""} \
      ~{if (illumina) then "--illumina" else ""} \
      ~{if (less_than) then "--less-than" else ""} \
      ~{if defined(min_seq_length) then ("--min_seq_length " +  '"' + min_seq_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_out: "Write fastq instead of fasta file, offset 33\\n(#)"
    illumina: "Illumina trimming mode"
    less_than: "Trim at <= instead of strictly ="
    min_seq_length: "filter sequence by minimum sequence length,\\ndefault is 1\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}
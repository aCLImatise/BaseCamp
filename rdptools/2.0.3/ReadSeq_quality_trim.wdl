version 1.0

task ReadSeqQualityTrim {
  input {
    Boolean? fast_q_out
    Boolean? illumina
    Boolean? less_than
    String? min_seq_length
    String usage
  }
  command <<<
    ReadSeq quality-trim \
      ~{usage} \
      ~{true="--fastq-out" false="" fast_q_out} \
      ~{true="--illumina" false="" illumina} \
      ~{true="--less-than" false="" less_than} \
      ~{if defined(min_seq_length) then ("--min_seq_length " +  '"' + min_seq_length + '"') else ""}
  >>>
  parameter_meta {
    fast_q_out: "Write fastq instead of fasta file, offset 33 (#)"
    illumina: "Illumina trimming mode"
    less_than: "Trim at <= instead of strictly ="
    min_seq_length: "filter sequence by minimum sequence length, default is 1"
    usage: ""
  }
}
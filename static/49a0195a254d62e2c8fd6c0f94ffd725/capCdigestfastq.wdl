version 1.0

task CapCdigestfastq {
  input {
    Boolean? firstfq_first_pair
    Boolean? secondfq_second_pair
    Boolean? name_output_fastq
    Boolean? seq_sequence_restriction
    Boolean? x_bp_position
    Boolean? long
  }
  command <<<
    capCdigestfastq \
      ~{true="-1" false="" firstfq_first_pair} \
      ~{true="-2" false="" secondfq_second_pair} \
      ~{true="-o" false="" name_output_fastq} \
      ~{true="-e" false="" seq_sequence_restriction} \
      ~{true="-p" false="" x_bp_position} \
      ~{true="--long" false="" long}
  >>>
  parameter_meta {
    firstfq_first_pair: "first_fq    is the first of the pair of fastq files"
    secondfq_second_pair: "second_fq   is the second of the pair of fastq files"
    name_output_fastq: "output_fq   is the name of the output fastq file"
    seq_sequence_restriction: "SEQ         is the sequence of the restriction enzyme must be characters ACGT only"
    x_bp_position: "X           is the bp position within SEQ where the cut will occur (first base is 1; Xth base will be the start of the right hand fragment)"
    long: "option switches on 'long' mode, where only the longest of the restriction fragments in each of the pairs is kept"
  }
}
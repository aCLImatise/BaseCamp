version 1.0

task DshFastqSequenceLength {
  input {
    Boolean? about
    Boolean? fast_q_file
    Boolean? sequence_length_file
    String? args
  }
  command <<<
    dsh-fastq-sequence-length \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--fastq-file" false="" fast_q_file} \
      ~{true="--sequence-length-file" false="" sequence_length_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    sequence_length_file: "[class java.io.File]  output file of sequence lengths, default stdout [optional]"
    args: ""
  }
}
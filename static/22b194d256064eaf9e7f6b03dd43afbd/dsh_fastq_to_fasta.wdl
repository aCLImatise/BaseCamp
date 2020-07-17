version 1.0

task DshFastqToFasta {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    Boolean? output_fast_a_file
    String? args
  }
  command <<<
    dsh-fastq-to-fasta \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fastq-file" false="" input_fast_q_file} \
      ~{true="--output-fasta-file" false="" output_fast_a_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_a_file: "[class java.io.File]  output FASTA file, default stdout [optional]"
    args: ""
  }
}
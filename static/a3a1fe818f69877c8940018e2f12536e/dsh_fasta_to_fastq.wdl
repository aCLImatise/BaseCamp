version 1.0

task DshFastaToFastq {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    Boolean? output_fast_q_file
    Boolean? quality
    String? args
  }
  command <<<
    dsh-fasta-to-fastq \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fasta-file" false="" input_fast_a_file} \
      ~{true="--output-fastq-file" false="" output_fast_q_file} \
      ~{true="--quality" false="" quality}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    quality: "[class java.lang.Integer]  quality score for FASTQ, [0..93], default 40 [optional]"
    args: ""
  }
}
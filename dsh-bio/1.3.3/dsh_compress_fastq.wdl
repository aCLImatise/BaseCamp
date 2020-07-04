version 1.0

task DshCompressFastq {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    Boolean? output_fast_q_file
    String? args
  }
  command <<<
    dsh-compress-fastq \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fastq-file" false="" input_fast_q_file} \
      ~{true="--output-fastq-file" false="" output_fast_q_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    args: ""
  }
}
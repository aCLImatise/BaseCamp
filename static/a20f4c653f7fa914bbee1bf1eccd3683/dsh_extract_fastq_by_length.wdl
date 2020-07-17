version 1.0

task DshExtractFastqByLength {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    Boolean? output_fast_q_file
    Boolean? minimum_length
    Boolean? maximum_length
    String? args
  }
  command <<<
    dsh-extract-fastq-by-length \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fastq-file" false="" input_fast_q_file} \
      ~{true="--output-fastq-file" false="" output_fast_q_file} \
      ~{true="--minimum-length" false="" minimum_length} \
      ~{true="--maximum-length" false="" maximum_length}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    minimum_length: "[class java.lang.Integer]  minimum sequence length, inclusive [required]"
    maximum_length: "[class java.lang.Integer]  maximum sequence length, exclusive [required]"
    args: ""
  }
}
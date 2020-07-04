version 1.0

task DshExtractFastq {
  input {
    Boolean? about
    Boolean? input_fast_q_file
    Boolean? output_fast_q_file
    Boolean? name
    Boolean? description
    String? args
  }
  command <<<
    dsh-extract-fastq \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fastq-file" false="" input_fast_q_file} \
      ~{true="--output-fastq-file" false="" output_fast_q_file} \
      ~{true="--name" false="" name} \
      ~{true="--description" false="" description}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    output_fast_q_file: "[class java.io.File]  output FASTQ file, default stdout [optional]"
    name: "[class java.lang.String]  exact sequence name to match [optional]"
    description: "[class java.lang.String]  FASTQ description regex pattern to match [optional]"
    args: ""
  }
}
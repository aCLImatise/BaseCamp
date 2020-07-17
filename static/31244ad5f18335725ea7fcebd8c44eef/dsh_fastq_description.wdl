version 1.0

task DshFastqDescription {
  input {
    Boolean? about
    Boolean? fast_q_file
    Boolean? description_file
    String? args
  }
  command <<<
    dsh-fastq-description \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--fastq-file" false="" fast_q_file} \
      ~{true="--description-file" false="" description_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    fast_q_file: "[class java.io.File]  input FASTQ file, default stdin [optional]"
    description_file: "[class java.io.File]  output file of description lines, default stdout [optional]"
    args: ""
  }
}
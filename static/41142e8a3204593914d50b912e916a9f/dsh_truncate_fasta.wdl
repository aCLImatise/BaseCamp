version 1.0

task DshTruncateFasta {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    Boolean? output_fast_a_file
    Boolean? length
    Boolean? line_width
    String? args
  }
  command <<<
    dsh-truncate-fasta \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-fasta-file" false="" input_fast_a_file} \
      ~{true="--output-fasta-file" false="" output_fast_a_file} \
      ~{true="--length" false="" length} \
      ~{true="--line-width" false="" line_width}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_fast_a_file: "[class java.io.File]  output FASTA file, default stdout [optional]"
    length: "[class java.lang.Integer]  length, default 10000 [optional]"
    line_width: "[class java.lang.Integer]  line width, default 70 [optional]"
    args: ""
  }
}
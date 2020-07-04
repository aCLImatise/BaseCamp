version 1.0

task DshCompressGfa2 {
  input {
    Boolean? about
    Boolean? input_gfa_two_file
    Boolean? output_gfa_two_file
    String? args
  }
  command <<<
    dsh-compress-gfa2 \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-gfa2-file" false="" input_gfa_two_file} \
      ~{true="--output-gfa2-file" false="" output_gfa_two_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_gfa_two_file: "[class java.io.File]  input GFA 2.0 file, default stdin [optional]"
    output_gfa_two_file: "[class java.io.File]  output GFA 2.0 file, default stdout [optional]"
    args: ""
  }
}
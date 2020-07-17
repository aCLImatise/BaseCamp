version 1.0

task DshGfa1ToGfa2 {
  input {
    Boolean? about
    Boolean? input_gfa_one_file
    Boolean? output_gfa_two_file
  }
  command <<<
    dsh-gfa1-to-gfa2 \
      ~{true="--about" false="" about} \
      ~{true="--input-gfa1-file" false="" input_gfa_one_file} \
      ~{true="--output-gfa2-file" false="" output_gfa_two_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_two_file: "[class java.io.File]  output GFA 2.0 file, default stdout [optional]"
  }
}
version 1.0

task DshTraversePaths {
  input {
    Boolean? about
    Boolean? input_gfa_one_file
    Boolean? output_gfa_one_file
    String? args
  }
  command <<<
    dsh-traverse-paths \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-gfa1-file" false="" input_gfa_one_file} \
      ~{true="--output-gfa1-file" false="" output_gfa_one_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_one_file: "[class java.io.File]  output GFA 1.0 file, default stdout [optional]"
    args: ""
  }
}
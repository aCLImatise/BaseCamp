version 1.0

task DshFilterGfa2 {
  input {
    Boolean? about
    Boolean? script
    Boolean? input_gfa_two_file
    Boolean? output_gfa_two_file
  }
  command <<<
    dsh-filter-gfa2 \
      ~{true="--about" false="" about} \
      ~{true="--script" false="" script} \
      ~{true="--input-gfa2-file" false="" input_gfa_two_file} \
      ~{true="--output-gfa2-file" false="" output_gfa_two_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gfa_two_file: "[class java.io.File]  input GFA 2.0 file, default stdin [optional]"
    output_gfa_two_file: "[class java.io.File]  output GFA 2.0 file, default stdout [optional]"
  }
}
version 1.0

task DshCompressSam {
  input {
    Boolean? about
    Boolean? input_sam_file
    Boolean? output_sam_file
    String? args
  }
  command <<<
    dsh-compress-sam \
      ~{args} \
      ~{true="--about" false="" about} \
      ~{true="--input-sam-file" false="" input_sam_file} \
      ~{true="--output-sam-file" false="" output_sam_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_sam_file: "[class java.io.File]  input SAM file, default stdin [optional]"
    output_sam_file: "[class java.io.File]  output SAM file, default stdout [optional]"
    args: ""
  }
}
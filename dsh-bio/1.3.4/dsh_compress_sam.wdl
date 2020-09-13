version 1.0

task Dshcompresssam {
  input {
    Boolean? about
    Boolean? input_sam_file
    File? output_sam_file
    String? args
  }
  command <<<
    dsh_compress_sam \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_sam_file) then "--input-sam-file" else ""} \
      ~{if (output_sam_file) then "--output-sam-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_sam_file: "[class java.io.File]  input SAM file, default stdin [optional]"
    output_sam_file: "[class java.io.File]  output SAM file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_sam_file = "${in_output_sam_file}"
  }
}
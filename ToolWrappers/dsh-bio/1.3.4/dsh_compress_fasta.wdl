version 1.0

task Dshcompressfasta {
  input {
    Boolean? about
    Boolean? input_fast_a_file
    File? output_fast_a_file
    Boolean? line_width
    String? args
  }
  command <<<
    dsh_compress_fasta \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_fast_a_file) then "--input-fasta-file" else ""} \
      ~{if (output_fast_a_file) then "--output-fasta-file" else ""} \
      ~{if (line_width) then "--line-width" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_fast_a_file: "[class java.io.File]  input FASTA file, default stdin [optional]"
    output_fast_a_file: "[class java.io.File]  output FASTA file, default stdout [optional]"
    line_width: "[class java.lang.Integer]  line width, default 70 [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a_file = "${in_output_fast_a_file}"
  }
}
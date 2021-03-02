version 1.0

task Dshgfa1togfa2 {
  input {
    Boolean? about
    Boolean? input_gfa_one_file
    File? output_gfa_two_file
  }
  command <<<
    dsh_gfa1_to_gfa2 \
      ~{if (about) then "--about" else ""} \
      ~{if (input_gfa_one_file) then "--input-gfa1-file" else ""} \
      ~{if (output_gfa_two_file) then "--output-gfa2-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_two_file: "[class java.io.File]  output GFA 2.0 file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gfa_two_file = "${in_output_gfa_two_file}"
  }
}
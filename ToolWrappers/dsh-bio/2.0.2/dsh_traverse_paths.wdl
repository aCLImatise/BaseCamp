version 1.0

task Dshtraversepaths {
  input {
    Boolean? about
    Boolean? input_gfa_one_file
    File? output_gfa_one_file
    String? args
  }
  command <<<
    dsh_traverse_paths \
      ~{args} \
      ~{if (about) then "--about" else ""} \
      ~{if (input_gfa_one_file) then "--input-gfa1-file" else ""} \
      ~{if (output_gfa_one_file) then "--output-gfa1-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dsh-bio:2.0.2--0"
  }
  parameter_meta {
    about: "display about message [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_one_file: "[class java.io.File]  output GFA 1.0 file, default stdout [optional]"
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gfa_one_file = "${in_output_gfa_one_file}"
  }
}
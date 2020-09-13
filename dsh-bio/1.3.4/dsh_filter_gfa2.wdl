version 1.0

task Dshfiltergfa2 {
  input {
    Boolean? about
    Boolean? script
    Boolean? input_gfa_two_file
    File? output_gfa_two_file
  }
  command <<<
    dsh_filter_gfa2 \
      ~{if (about) then "--about" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_gfa_two_file) then "--input-gfa2-file" else ""} \
      ~{if (output_gfa_two_file) then "--output-gfa2-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gfa_two_file: "[class java.io.File]  input GFA 2.0 file, default stdin [optional]"
    output_gfa_two_file: "[class java.io.File]  output GFA 2.0 file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gfa_two_file = "${in_output_gfa_two_file}"
  }
}
version 1.0

task Isatab2dot {
  input {
    File? investigation_file
    File? output_file
  }
  command <<<
    isatab2dot \
      ~{if defined(investigation_file) then ("--investigation-file " +  '"' + investigation_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    investigation_file: "Path to investigation file"
    output_file: "Path to output file, stdout (\\\"-\\\") by default\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
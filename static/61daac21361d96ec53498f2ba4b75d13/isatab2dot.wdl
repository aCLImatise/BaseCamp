version 1.0

task Isatab2dot {
  input {
    String? investigation_file
    String? output_file
  }
  command <<<
    isatab2dot \
      ~{if defined(investigation_file) then ("--investigation-file " +  '"' + investigation_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    investigation_file: "Path to investigation file"
    output_file: "Path to output file, stdout (\"-\") by default"
  }
}
version 1.0

task Isatab2isatab {
  input {
    File? input_investigation_file
    File? output_investigation_file
    String? quotes
    Boolean? no_warnings
  }
  command <<<
    isatab2isatab \
      ~{if defined(input_investigation_file) then ("--input-investigation-file " +  '"' + input_investigation_file + '"') else ""} \
      ~{if defined(output_investigation_file) then ("--output-investigation-file " +  '"' + output_investigation_file + '"') else ""} \
      ~{if defined(quotes) then ("--quotes " +  '"' + quotes + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/altamisa:0.2.8--py_0"
  }
  parameter_meta {
    input_investigation_file: "Path to input investigation file"
    output_investigation_file: "Path to output investigation file, stdout (\\\"-\\\") by\\ndefault. Needs to be in a different directory!"
    quotes: "Character for quoting, e.g. \\\"\\\\\"\\\" (None by default)"
    no_warnings: "Suppress ISA-tab related warnings (False by default)"
  }
  output {
    File out_stdout = stdout()
    File out_output_investigation_file = "${in_output_investigation_file}"
  }
}
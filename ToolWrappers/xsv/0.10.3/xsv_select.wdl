version 1.0

task XsvSelect {
  input {
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv select \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will not be interpreted\\nas headers. (i.e., They are not searched, analyzed,\\nsliced, etc.)"
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
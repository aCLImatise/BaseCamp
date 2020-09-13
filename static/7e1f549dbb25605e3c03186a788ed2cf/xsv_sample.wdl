version 1.0

task XsvSample {
  input {
    File? write_output_file
    Boolean? no_headers
    String? delimiter
    Int sample_size
  }
  command <<<
    xsv sample \
      ~{sample_size} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will be consider as part of\\nthe population to sample from. (When not set, the\\nfirst row is the header row and will always appear\\nin the output.)"
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
    sample_size: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
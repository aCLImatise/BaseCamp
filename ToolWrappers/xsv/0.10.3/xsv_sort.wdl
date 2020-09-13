version 1.0

task XsvSort {
  input {
    String? select
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv sort \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    select: "Select a subset of columns to sort.\\nSee 'xsv select --help' for the format details."
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will not be interpreted\\nas headers. Namely, it will be sorted with the rest\\nof the rows. Otherwise, the first row will always\\nappear as the header row in the output."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
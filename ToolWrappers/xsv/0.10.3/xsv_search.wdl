version 1.0

task XsvSearch {
  input {
    Boolean? ignore_case
    String? select
    Boolean? invert_match
    File? write_output_file
    Boolean? no_headers
    String? delimiter
    String regex
  }
  command <<<
    xsv search \
      ~{regex} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    ignore_case: "Case insensitive search. This is equivalent to\\nprefixing the regex with '(?i)'."
    select: "Select the columns to search. See 'xsv select -h'\\nfor the full syntax."
    invert_match: "Select only rows that did not match"
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will not be interpreted\\nas headers. (i.e., They are not searched, analyzed,\\nsliced, etc.)"
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
    regex: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
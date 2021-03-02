version 1.0

task XsvSlice {
  input {
    String? start
    String? end
    Int? len
    Int? index
    File? write_output_file
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv slice \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(len) then ("--len " +  '"' + len + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start: "The index of the record to slice from."
    end: "The index of the record to slice to."
    len: "The length of the slice (can be used instead\\nof --end)."
    index: "Slice a single record (shortcut for -s N -l 1)."
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will not be interpreted\\nas headers. Otherwise, the first row will always\\nappear in the output as the header row."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
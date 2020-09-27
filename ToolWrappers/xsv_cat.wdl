version 1.0

task XsvCat {
  input {
    Boolean? pad
    File? write_output_file
    Boolean? no_headers
    String? delimiter
    String columns
    String rows
  }
  command <<<
    xsv cat \
      ~{columns} \
      ~{rows} \
      ~{if (pad) then "--pad" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    pad: "When concatenating columns, this flag will cause\\nall records to appear. It will pad each row if\\nother CSV data isn't long enough."
    write_output_file: "Write output to <file> instead of stdout."
    no_headers: "When set, the first row will NOT be interpreted\\nas column names. Note that this has no effect when\\nconcatenating columns."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
    columns: ""
    rows: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
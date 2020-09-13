version 1.0

task XsvFixlengths {
  input {
    Int? length
    File? write_output_file
    String? delimiter
  }
  command <<<
    xsv fixlengths \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    length: "Forcefully set the length of each record. If a\\nrecord is not the size given, then it is truncated\\nor expanded as appropriate."
    write_output_file: "Write output to <file> instead of stdout."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
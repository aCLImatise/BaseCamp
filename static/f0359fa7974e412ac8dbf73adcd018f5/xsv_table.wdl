version 1.0

task XsvTable {
  input {
    Int? width
    Int? pad
    Int? condense
    File? write_output_file
    String? delimiter
  }
  command <<<
    xsv table \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(condense) then ("--condense " +  '"' + condense + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    width: "The minimum width of each column.\\n[default: 2]"
    pad: "The minimum number of spaces between each column.\\n[default: 2]"
    condense: "Limits the length of each field to the value\\nspecified. If the field is UTF-8 encoded, then\\n<arg> refers to the number of code points.\\nOtherwise, it refers to the number of bytes."
    write_output_file: "Write output to <file> instead of stdout."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
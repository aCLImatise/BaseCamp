version 1.0

task XsvFlatten {
  input {
    Int? condense
    String? separator
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv flatten \
      ~{if defined(condense) then ("--condense " +  '"' + condense + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    condense: "Limits the length of each field to the value\\nspecified. If the field is UTF-8 encoded, then\\n<arg> refers to the number of code points.\\nOtherwise, it refers to the number of bytes."
    separator: "A string of characters to write after each record.\\nWhen non-empty, a new line is automatically\\nappended to the separator.\\n[default: #]"
    no_headers: "When set, the first row will not be interpreted\\nas headers. When set, the name of each field\\nwill be its index."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
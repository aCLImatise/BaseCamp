version 1.0

task XsvFmt {
  input {
    String? out_delimiter
    Boolean? crlf
    Boolean? ascii
    String? quote
    Boolean? quote_always
    String? escape
    File? write_output_file
    String? delimiter
  }
  command <<<
    xsv fmt \
      ~{if defined(out_delimiter) then ("--out-delimiter " +  '"' + out_delimiter + '"') else ""} \
      ~{if (crlf) then "--crlf" else ""} \
      ~{if (ascii) then "--ascii" else ""} \
      ~{if defined(quote) then ("--quote " +  '"' + quote + '"') else ""} \
      ~{if (quote_always) then "--quote-always" else ""} \
      ~{if defined(escape) then ("--escape " +  '"' + escape + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    out_delimiter: "The field delimiter for writing CSV data.\\n[default: ,]"
    crlf: "Use '\\r\\n' line endings in the output."
    ascii: "Use ASCII field and record separators."
    quote: "The quote character to use. [default: \\\"]"
    quote_always: "Put quotes around every value."
    escape: "The escape character to use. When not specified,\\nquotes are escaped by doubling them."
    write_output_file: "Write output to <file> instead of stdout."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. [default: ,]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
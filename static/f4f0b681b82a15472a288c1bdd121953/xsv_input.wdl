version 1.0

task XsvInput {
  input {
    String? quote
    String? escape
    File? write_output_file
    String? delimiter
  }
  command <<<
    xsv input \
      ~{if defined(quote) then ("--quote " +  '"' + quote + '"') else ""} \
      ~{if defined(escape) then ("--escape " +  '"' + escape + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quote: "The quote character to use. [default: \\\"]"
    escape: "The escape character to use. When not specified,\\nquotes are escaped by doubling them."
    write_output_file: "Write output to <file> instead of stdout."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. [default: ,]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}
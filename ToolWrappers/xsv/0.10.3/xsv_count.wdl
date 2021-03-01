version 1.0

task XsvCount {
  input {
    Boolean? no_headers
    String? delimiter
  }
  command <<<
    xsv count \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_headers: "When set, the first row will not be included in\\nthe count."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
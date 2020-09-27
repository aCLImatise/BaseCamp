version 1.0

task XsvHeaders {
  input {
    Boolean? just_names
    Boolean? intersect
    String? delimiter
  }
  command <<<
    xsv headers \
      ~{if (just_names) then "--just-names" else ""} \
      ~{if (intersect) then "--intersect" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""}
  >>>
  parameter_meta {
    just_names: "Only show the header names (hide column index).\\nThis is automatically enabled if more than one\\ninput is given."
    intersect: "Shows the intersection of all headers in all of\\nthe inputs given."
    delimiter: "The field delimiter for reading CSV data.\\nMust be a single character. (default: ,)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
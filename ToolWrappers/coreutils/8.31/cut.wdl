version 1.0

task Cut {
  input {
    String? bytes
    String? characters
    String? delimiter
    String? fields
    Boolean? ignored
    Boolean? complement
    Boolean? only_delimited
    String? output_delimiter
    Boolean? zero_terminated
    Boolean? first_mth_included
    String nth_byte_character
    String n_m
  }
  command <<<
    cut \
      ~{nth_byte_character} \
      ~{n_m} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if defined(characters) then ("--characters " +  '"' + characters + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if (ignored) then "-n" else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (only_delimited) then "--only-delimited" else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""} \
      ~{if (first_mth_included) then "-M" else ""}
  >>>
  parameter_meta {
    bytes: "select only these bytes"
    characters: "select only these characters"
    delimiter: "use DELIM instead of TAB for field delimiter"
    fields: "select only these fields;  also print any line\\nthat contains no delimiter character, unless\\nthe -s option is specified"
    ignored: "(ignored)"
    complement: "complement the set of selected bytes, characters\\nor fields"
    only_delimited: "do not print lines not containing delimiters"
    output_delimiter: "use STRING as the output delimiter\\nthe default is to use the input delimiter"
    zero_terminated: "line delimiter is NUL, not newline"
    first_mth_included: "from first to M'th (included) byte, character or field"
    nth_byte_character: "from N'th byte, character or field, to end of line"
    n_m: "from N'th to M'th (included) byte, character or field"
  }
  output {
    File out_stdout = stdout()
  }
}
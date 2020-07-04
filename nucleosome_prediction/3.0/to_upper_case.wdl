version 1.0

task ToUpperCase.pl {
  input {
    Boolean? convert_lower_case
    String? convert_only_column
  }
  command <<<
    to_upper_case.pl \
      ~{true="-l" false="" convert_lower_case} \
      ~{if defined(convert_only_column) then ("-c " +  '"' + convert_only_column + '"') else ""}
  >>>
  parameter_meta {
    convert_lower_case: ":       Convert to lower case"
    convert_only_column: ": Convert only column <num> (default: convert the entire line)"
  }
}
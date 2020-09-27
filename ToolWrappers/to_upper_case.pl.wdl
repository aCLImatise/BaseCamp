version 1.0

task ToUpperCasepl {
  input {
    Boolean? convert_lower_case
    Int? convert_column_default
  }
  command <<<
    to_upper_case_pl \
      ~{if (convert_lower_case) then "-l" else ""} \
      ~{if defined(convert_column_default) then ("-c " +  '"' + convert_column_default + '"') else ""}
  >>>
  parameter_meta {
    convert_lower_case: ":       Convert to lower case"
    convert_column_default: ": Convert only column <num> (default: convert the entire line)"
  }
  output {
    File out_stdout = stdout()
  }
}
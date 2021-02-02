version 1.0

task FiltergffValues {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff values \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "--str-eq TEXT  filter by custom key:value, if the argument is 'key:value'\\nthe annotation is kept if it contains an attribute 'key'\\nwhose value is exactly 'value' as a string\\n--str-in TEXT  Same as '--str-eq' but 'value' is contained in the attribute\\n--num-eq TEXT  Same as '--str-eq' but 'value' is a number which is equal or\\ngreater than\\n--num-ge TEXT  Same as '--str-eq' but 'value' is a number which is equal or\\ngreater than\\n--num-le TEXT  Same as '--num-ge' but 'value' is a number which is equal or\\nless than\\n--num-gt TEXT  Same as '--str-eq' but 'value' is a number which is greater\\nthan\\n--num-lt TEXT  Same as '--num-ge' but 'value' is a number which is less than\\n--progress     Shows Progress Bar\\n--help         Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
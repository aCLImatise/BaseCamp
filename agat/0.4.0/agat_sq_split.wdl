version 1.0

task AgatSqSplit.pl {
  input {
    String? string_output_file
    String? i
  }
  command <<<
    agat_sq_split.pl \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
    i: ""
  }
}
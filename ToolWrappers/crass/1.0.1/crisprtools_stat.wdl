version 1.0

task CrisprtoolsStat {
  input {
    Boolean? print_aggregate_summary
    Boolean? print_column_headers
    Array[String] comma_separated_list
    Boolean? pretty_print
    Boolean? separator_string_tabular
    Boolean? tabular_output
    Boolean? coverage
  }
  command <<<
    crisprtools stat \
      ~{if (print_aggregate_summary) then "-a" else ""} \
      ~{if (print_column_headers) then "-H" else ""} \
      ~{if defined(comma_separated_list) then ("-g " +  '"' + comma_separated_list + '"') else ""} \
      ~{if (pretty_print) then "-p" else ""} \
      ~{if (separator_string_tabular) then "-s" else ""} \
      ~{if (tabular_output) then "-t" else ""} \
      ~{if (coverage) then "--coverage" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_aggregate_summary: "print out aggregate summary, can be combined with -t -p"
    print_column_headers: "print out column headers in tabular output"
    comma_separated_list: "a comma separated list of group IDs that you would like to see stats for."
    pretty_print: "pretty print"
    separator_string_tabular: "separator string for tabular output [default: '     ']"
    tabular_output: "tabular output"
    coverage: "Create a detailed report on the spacer coverage for each group"
  }
  output {
    File out_stdout = stdout()
  }
}
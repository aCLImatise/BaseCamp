version 1.0

task Roc {
  input {
    Boolean? verbose
    File? input_file
    File? arg_output_file
    Boolean? arg_separator_character
    Boolean? arg_lines_skip
    Boolean? arg_value_column
    Int? value_column
    Boolean? arg_reverse_counting
    Boolean? arg_tag_column
    Int? tag_column
    Boolean? arg_filter_column
    Int? filter_column
    Boolean? arg_filter_name
  }
  command <<<
    roc \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_separator_character) then "-s" else ""} \
      ~{if (arg_lines_skip) then "-H" else ""} \
      ~{if (arg_value_column) then "-v" else ""} \
      ~{if defined(value_column) then ("--value-column " +  '"' + value_column + '"') else ""} \
      ~{if (arg_reverse_counting) then "-R" else ""} \
      ~{if (arg_tag_column) then "-t" else ""} \
      ~{if defined(tag_column) then ("--tag-column " +  '"' + tag_column + '"') else ""} \
      ~{if (arg_filter_column) then "-f" else ""} \
      ~{if defined(filter_column) then ("--filter-column " +  '"' + filter_column + '"') else ""} \
      ~{if (arg_filter_name) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "show verbose information (to stderr)"
    input_file: "The input files"
    arg_output_file: "[ --output-file ] arg  Output file name, defaults to - / write to stdout"
    arg_separator_character: "[ --separator ] arg    separator character (default: '\\t' for reading tsv)"
    arg_lines_skip: "[ --header-lines ] arg lines to skip before starting to read"
    arg_value_column: "[ --value ] arg        value column name"
    value_column: "value column number"
    arg_reverse_counting: "[ --reverse ] arg      Reverse counting for score (default: higher scores\\nare better)"
    arg_tag_column: "[ --tag ] arg          tag column name"
    tag_column: "tag column number. Tags must be TP/FP/FN, lines\\nwith different tags will be ignored"
    arg_filter_column: "[ --filter ] arg       filter column name"
    filter_column: "filter column number. This is used if we the value\\nwe are varying is a threshold for a certain filter."
    arg_filter_name: "[ --filter-name ] arg  filter name if value is threshold for this filter"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}
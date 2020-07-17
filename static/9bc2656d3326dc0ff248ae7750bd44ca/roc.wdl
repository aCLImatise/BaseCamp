version 1.0

task Roc {
  input {
    Boolean? verbose
    String? input_file
    Boolean? arg_output_file
    Boolean? arg_character_default
    Boolean? arg_lines_skip
    Boolean? arg_value_column
    String? value_column
    Boolean? arg_reverse_counting
    Boolean? arg_tag_column
    String? tag_column
    Boolean? arg_filter_column
    String? filter_column
    Boolean? arg_filter_name
  }
  command <<<
    roc \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-s" false="" arg_character_default} \
      ~{true="-H" false="" arg_lines_skip} \
      ~{true="-v" false="" arg_value_column} \
      ~{if defined(value_column) then ("--value-column " +  '"' + value_column + '"') else ""} \
      ~{true="-R" false="" arg_reverse_counting} \
      ~{true="-t" false="" arg_tag_column} \
      ~{if defined(tag_column) then ("--tag-column " +  '"' + tag_column + '"') else ""} \
      ~{true="-f" false="" arg_filter_column} \
      ~{if defined(filter_column) then ("--filter-column " +  '"' + filter_column + '"') else ""} \
      ~{true="-n" false="" arg_filter_name}
  >>>
  parameter_meta {
    verbose: "show verbose information (to stderr)"
    input_file: "The input files"
    arg_output_file: "[ --output-file ] arg  Output file name, defaults to - / write to stdout"
    arg_character_default: "[ --separator ] arg    separator character (default: '\t' for reading tsv)"
    arg_lines_skip: "[ --header-lines ] arg lines to skip before starting to read"
    arg_value_column: "[ --value ] arg        value column name"
    value_column: "value column number"
    arg_reverse_counting: "[ --reverse ] arg      Reverse counting for score (default: higher scores  are better)"
    arg_tag_column: "[ --tag ] arg          tag column name"
    tag_column: "tag column number. Tags must be TP/FP/FN, lines  with different tags will be ignored"
    arg_filter_column: "[ --filter ] arg       filter column name"
    filter_column: "filter column number. This is used if we the value  we are varying is a threshold for a certain filter."
    arg_filter_name: "[ --filter-name ] arg  filter name if value is threshold for this filter"
  }
}
version 1.0

task Metaxa2Dc {
  input {
    File? _output_file
    String? column_containing_taxon_data_default
    String? column_containing_count_data_default
    String? string_removed_used
    String? regular_expression_pattern
    Boolean? help
    Boolean? bugs
    Boolean? license
    String input_files
  }
  command <<<
    metaxa2_dc \
      ~{input_files} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(column_containing_taxon_data_default) then ("-t " +  '"' + column_containing_taxon_data_default + '"') else ""} \
      ~{if defined(column_containing_count_data_default) then ("-c " +  '"' + column_containing_count_data_default + '"') else ""} \
      ~{if defined(string_removed_used) then ("-r " +  '"' + string_removed_used + '"') else ""} \
      ~{if defined(regular_expression_pattern) then ("-p " +  '"' + regular_expression_pattern + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  parameter_meta {
    _output_file: ": Output file"
    column_containing_taxon_data_default: ": Column containing taxon data, default = 0"
    column_containing_count_data_default: ": Column containing count data, default = 1"
    string_removed_used: ": String to be removed from the file name for use as sample name. Regular expressions can be used. Default = '.level_[0-9].txt'"
    regular_expression_pattern: ": Regular expression pattern for selecting the sample name from the file name. Default = '.*' (will cover full file name)"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
    input_files: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}
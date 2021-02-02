version 1.0

task ConusCompare {
  input {
    File? use_model_file
    String? use_grammar_string
    Boolean? use_mathews_method
    Boolean? output_table_format
    Boolean? give_cummulative_statistics
    Boolean? give_statistics_sequence
    Boolean? output_real_predicted
    Boolean? output_predicted_structures
    Boolean? _verbose_output
    Boolean? print_parameters_model
    Boolean? _debugging_output
    Boolean? debugging_print_traceback
    Boolean? debugging_print_fill
    Boolean? options
  }
  command <<<
    conus_compare \
      ~{if defined(use_model_file) then ("-m " +  '"' + use_model_file + '"') else ""} \
      ~{if defined(use_grammar_string) then ("-g " +  '"' + use_grammar_string + '"') else ""} \
      ~{if (use_mathews_method) then "-M" else ""} \
      ~{if (output_table_format) then "-c" else ""} \
      ~{if (give_cummulative_statistics) then "-a" else ""} \
      ~{if (give_statistics_sequence) then "-i" else ""} \
      ~{if (output_real_predicted) then "-p" else ""} \
      ~{if (output_predicted_structures) then "-q" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (debugging_print_traceback) then "-t" else ""} \
      ~{if (debugging_print_fill) then "-f" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_model_file: ": Use model <file>"
    use_grammar_string: ": Use grammar <string> and plus one scoring\\n-H           (with -g) shift to hydrogen bonding scoring\\n--flat       (with -g) flat scoring scheme"
    use_mathews_method: ": Use the Mathews99 method of evalutation"
    output_table_format: ": output in table format"
    give_cummulative_statistics: ": give cummulative statistics (global)"
    give_statistics_sequence: ": give statistics on each sequence (ignored in table mode)"
    output_real_predicted: ": output real and predicted structures"
    output_predicted_structures: ": output predicted structures in stockholm format"
    _verbose_output: ": verbose output"
    print_parameters_model: ": print out parameters of model"
    _debugging_output: ": debugging output"
    debugging_print_traceback: ": debugging, print traceback"
    debugging_print_fill: ": debugging, print fill matrix from cyk"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
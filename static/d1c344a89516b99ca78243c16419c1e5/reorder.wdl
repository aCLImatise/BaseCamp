version 1.0

task Reorder {
  input {
    Boolean? number_suboptimals_reorder
    File? use_parameters_grammar
    File? use_string_defaults
    Boolean? print_parameters_model
    Boolean? print_parse_trees
    Boolean? report_suboptimals_table
    Boolean? report_things_better
    Boolean? report_tracebacks_cyk
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? debugging_fill_matrix
    Boolean? print_real_predicted
    Boolean? print_predicted_structures
  }
  command <<<
    reorder \
      ~{if (number_suboptimals_reorder) then "-b" else ""} \
      ~{if defined(use_parameters_grammar) then ("-m " +  '"' + use_parameters_grammar + '"') else ""} \
      ~{if defined(use_string_defaults) then ("-g " +  '"' + use_string_defaults + '"') else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (print_parse_trees) then "-t" else ""} \
      ~{if (report_suboptimals_table) then "-a" else ""} \
      ~{if (report_things_better) then "-c" else ""} \
      ~{if (report_tracebacks_cyk) then "-i" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (debugging_fill_matrix) then "-f" else ""} \
      ~{if (print_real_predicted) then "-p" else ""} \
      ~{if (print_predicted_structures) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_suboptimals_reorder: ": (req) number of suboptimals to reorder"
    use_parameters_grammar: ": Use parameters, grammar and scoring specified in model <file>"
    use_string_defaults: ": Use grammar <string>, defaults to NUS; ignored if model file specified"
    print_parameters_model: ": print out parameters of model"
    print_parse_trees: ": print all parse trees (lots!)"
    report_suboptimals_table: ": report all suboptimals table"
    report_things_better: ": report on things better than CYK"
    report_tracebacks_cyk: ": report tracebacks in CYK report (ignored if not with -c)"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    debugging_fill_matrix: ": debugging, print fill matrix from cyk"
    print_real_predicted: ": print real with predicted structure"
    print_predicted_structures: ": print predicted structures in stockholm format"
  }
  output {
    File out_stdout = stdout()
  }
}
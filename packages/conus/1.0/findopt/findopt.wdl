version 1.0

task Findopt {
  input {
    File? use_model_file
    Int? max_num_suboptimals
    Boolean? print_parameters_model
    Boolean? print_parse_trees
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? debugging_print_fill
    Boolean? print_real_predicted
    Boolean? print_predicted_structures
  }
  command <<<
    findopt \
      ~{if defined(use_model_file) then ("-m " +  '"' + use_model_file + '"') else ""} \
      ~{if defined(max_num_suboptimals) then ("-b " +  '"' + max_num_suboptimals + '"') else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (print_parse_trees) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (debugging_print_fill) then "-f" else ""} \
      ~{if (print_real_predicted) then "-p" else ""} \
      ~{if (print_predicted_structures) then "-q" else ""}
  >>>
  parameter_meta {
    use_model_file: ": Use model <file>"
    max_num_suboptimals: ": Max num suboptimals to look at"
    print_parameters_model: ": print out parameters of model"
    print_parse_trees: ": print all parse trees (lots!)"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    debugging_print_fill: ": debugging, print fill matrix from cyk"
    print_real_predicted: ": print real with predicted structure"
    print_predicted_structures: ": print predicted structures in stockholm format"
  }
  output {
    File out_stdout = stdout()
  }
}
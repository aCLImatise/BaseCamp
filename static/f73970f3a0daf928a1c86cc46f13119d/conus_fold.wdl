version 1.0

task ConusFold {
  input {
    File? use_model_file
    String? use_grammar_string
    File? redirect_structure_output
    Boolean? _verbose_output
    Boolean? print_parameters_model
    Boolean? _debugging_output
    Boolean? debugging_print_traceback
    Boolean? debugging_print_fill
    Boolean? print_predicted_structures
    Boolean? print_output_format
    Boolean? options
  }
  command <<<
    conus_fold \
      ~{if defined(use_model_file) then ("-m " +  '"' + use_model_file + '"') else ""} \
      ~{if defined(use_grammar_string) then ("-g " +  '"' + use_grammar_string + '"') else ""} \
      ~{if defined(redirect_structure_output) then ("-o " +  '"' + redirect_structure_output + '"') else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (debugging_print_traceback) then "-t" else ""} \
      ~{if (debugging_print_fill) then "-f" else ""} \
      ~{if (print_predicted_structures) then "-q" else ""} \
      ~{if (print_output_format) then "-c" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_model_file: ": Use model <file>"
    use_grammar_string: ": Use grammar <string> and plus one scoring\\n-H           (with -g) shift to hydrogen bonding scoring\\n--flat       (with -g) flat scoring scheme"
    redirect_structure_output: ": redirect structure output to <file>"
    _verbose_output: ": verbose output"
    print_parameters_model: ": print out parameters of model"
    _debugging_output: ": debugging output"
    debugging_print_traceback: ": debugging, print traceback"
    debugging_print_fill: ": debugging, print fill matrix from cyk"
    print_predicted_structures: ": print predicted structures in stockholm format"
    print_output_format: ": print ct output format for predicted structure"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_redirect_structure_output = "${in_redirect_structure_output}"
  }
}
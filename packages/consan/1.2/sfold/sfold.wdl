version 1.0

task Sfold {
  input {
    File? use_parameters_grammar
    Int? ensure_selection_results
    Int? use_int_pins
    Int? use_int_predicted
    Boolean? output_single_sequences
    Boolean? execute_full_algorithm
    Boolean? print_parameters_model
    Boolean? _print_traceback
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? options
    Int seq_file_one
    Int seq_file_two
  }
  command <<<
    sfold \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{if defined(use_parameters_grammar) then ("-m " +  '"' + use_parameters_grammar + '"') else ""} \
      ~{if defined(ensure_selection_results) then ("-M " +  '"' + ensure_selection_results + '"') else ""} \
      ~{if defined(use_int_pins) then ("-C " +  '"' + use_int_pins + '"') else ""} \
      ~{if defined(use_int_predicted) then ("-P " +  '"' + use_int_predicted + '"') else ""} \
      ~{if (output_single_sequences) then "-V" else ""} \
      ~{if (execute_full_algorithm) then "-f" else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (_print_traceback) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_parameters_grammar: ": Use parameters, grammar and scoring specified in model <file>"
    ensure_selection_results: ": Ensure that pin selection results in something near X Mbytes memory"
    use_int_pins: ": use <int> pins from trusted alignment"
    use_int_predicted: ": use <int> predicted pins"
    output_single_sequences: ": output as single sequences rather than pair"
    execute_full_algorithm: ": execute full (unconstrained) algorithm"
    print_parameters_model: ": print out parameters of model"
    _print_traceback: ": print traceback"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    options: ""
    seq_file_one: ""
    seq_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}
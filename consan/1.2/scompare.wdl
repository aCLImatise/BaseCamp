version 1.0

task Scompare {
  input {
    File? output_given_structure
    Int? ensure_selection_results
    Int? cyk_int_pins
    Int? cyk_use_predicted
    Boolean? full_sankoff_constraints
    Boolean? _print_traceback
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? suppress_extra_output
    Boolean? options
    String test_msa
  }
  command <<<
    scompare \
      ~{test_msa} \
      ~{if defined(output_given_structure) then ("-s " +  '"' + output_given_structure + '"') else ""} \
      ~{if defined(ensure_selection_results) then ("-M " +  '"' + ensure_selection_results + '"') else ""} \
      ~{if defined(cyk_int_pins) then ("-C " +  '"' + cyk_int_pins + '"') else ""} \
      ~{if defined(cyk_use_predicted) then ("-P " +  '"' + cyk_use_predicted + '"') else ""} \
      ~{if (full_sankoff_constraints) then "-f" else ""} \
      ~{if (_print_traceback) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (suppress_extra_output) then "-S" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    output_given_structure: ": Output of given structure in ordered pairs (needed for comppair)"
    ensure_selection_results: ": Ensure that pin selection results in something near X Mbytes memory"
    cyk_int_pins: ": do CYK and use <int> pins from trusted alignment"
    cyk_use_predicted: ": do CYK and use <int> predicted pins )"
    full_sankoff_constraints: ": do full sankoff (no constraints)"
    _print_traceback: ": print traceback"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    suppress_extra_output: ": suppress extra output"
    options: ""
    test_msa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
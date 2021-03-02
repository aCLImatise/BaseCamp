version 1.0

task Scompare {
  input {
    File? output_given_structure
    Int? ensure_selection_results
    Int? do_int_pins
    Int? do_int_predicted
    Boolean? do_full_sankoff
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
      ~{if defined(do_int_pins) then ("-C " +  '"' + do_int_pins + '"') else ""} \
      ~{if defined(do_int_predicted) then ("-P " +  '"' + do_int_predicted + '"') else ""} \
      ~{if (do_full_sankoff) then "-f" else ""} \
      ~{if (_print_traceback) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (suppress_extra_output) then "-S" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_given_structure: ": Output of given structure in ordered pairs (needed for comppair)"
    ensure_selection_results: ": Ensure that pin selection results in something near X Mbytes memory"
    do_int_pins: ": do CYK and use <int> pins from trusted alignment"
    do_int_predicted: ": do CYK and use <int> predicted pins )"
    do_full_sankoff: ": do full sankoff (no constraints)"
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
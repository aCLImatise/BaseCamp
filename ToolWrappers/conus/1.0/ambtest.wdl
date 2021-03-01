version 1.0

task Ambtest {
  input {
    File? req_use_model
    Boolean? _verbose_output
    Boolean? ignore_given_structure
    Boolean? _debugging_output
    Boolean? print_parameters_model
    Boolean? debugging_print_traceback
    Boolean? debugging_print_format
    Boolean? debugging_fill_matrix
    Boolean? options
    String seq_file_in
  }
  command <<<
    ambtest \
      ~{seq_file_in} \
      ~{if defined(req_use_model) then ("-m " +  '"' + req_use_model + '"') else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (ignore_given_structure) then "-i" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (debugging_print_traceback) then "-t" else ""} \
      ~{if (debugging_print_format) then "-c" else ""} \
      ~{if (debugging_fill_matrix) then "-f" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    req_use_model: ": (req) Use model <file>"
    _verbose_output: ": verbose output"
    ignore_given_structure: ": ignore given structure -- use CYK calculated structure"
    _debugging_output: ": debugging output"
    print_parameters_model: ": print out parameters of model"
    debugging_print_traceback: ": debugging, print traceback"
    debugging_print_format: ": debugging, print CT format of structure"
    debugging_fill_matrix: ": debugging, print fill matrix from cyk"
    options: ""
    seq_file_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}
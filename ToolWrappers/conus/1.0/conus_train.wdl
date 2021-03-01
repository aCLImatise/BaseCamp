version 1.0

task ConusTrain {
  input {
    String? use_string_defaults
    File? load_prior_specified
    Boolean? turn_standard_one
    File? save_model_file
    Boolean? print_parameters_model
    Boolean? _print_traceback
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? options
    String code
    String nus
    String una
    String run
    String ivo
    String bjk
    String yr_n
    String u_yn
    Int ry_three
    Int bk_two
  }
  command <<<
    conus_train \
      ~{code} \
      ~{nus} \
      ~{una} \
      ~{run} \
      ~{ivo} \
      ~{bjk} \
      ~{yr_n} \
      ~{u_yn} \
      ~{ry_three} \
      ~{bk_two} \
      ~{if defined(use_string_defaults) then ("-g " +  '"' + use_string_defaults + '"') else ""} \
      ~{if defined(load_prior_specified) then ("-l " +  '"' + load_prior_specified + '"') else ""} \
      ~{if (turn_standard_one) then "-1" else ""} \
      ~{if defined(save_model_file) then ("-s " +  '"' + save_model_file + '"') else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (_print_traceback) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_string_defaults: ": Use grammar <string>, defaults to NUS"
    load_prior_specified: ": Load prior specified in <file>"
    turn_standard_one: ": Turn off the standard plus one prior"
    save_model_file: ": save model file to <file>; defaults to conus.mod"
    print_parameters_model: ": print out parameters of model"
    _print_traceback: ": print traceback"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    options: ""
    code: "Grammar:"
    nus: "Ambiguous Simple Grammar (G1) "
    una: "Another Unambiguous (G3) "
    run: "Little Unambiguous (G4) "
    ivo: "Simplest Unambiguous (G5) "
    bjk: "Pfold grammar (G6) "
    yr_n: "Stacking grammar (G2) "
    u_yn: "Stacking analog of UNA (G7)"
    ry_three: "Stacking analog of RUN (G8)"
    bk_two: "Stacking parameterization of BJK (G6S)"
  }
  output {
    File out_stdout = stdout()
  }
}
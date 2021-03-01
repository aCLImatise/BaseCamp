version 1.0

task StrainMl {
  input {
    String? use_string_defaults
    File? save_model_file
    Boolean? print_parameters_model
    Boolean? print_counts_used
    Boolean? _print_traceback
    Boolean? _debugging_output
    Boolean? _verbose_output
    Boolean? turn_weighting_scheme
    Boolean? force_recalculate_weights
    Boolean? use_voronoi_weights
    Int? setup_tying_typeno
    Boolean? options
    String ml_train
    String training_set_files
  }
  command <<<
    strain_ml \
      ~{ml_train} \
      ~{training_set_files} \
      ~{if defined(use_string_defaults) then ("-g " +  '"' + use_string_defaults + '"') else ""} \
      ~{if defined(save_model_file) then ("-s " +  '"' + save_model_file + '"') else ""} \
      ~{if (print_parameters_model) then "-x" else ""} \
      ~{if (print_counts_used) then "-q" else ""} \
      ~{if (_print_traceback) then "-t" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (turn_weighting_scheme) then "-n" else ""} \
      ~{if (force_recalculate_weights) then "-c" else ""} \
      ~{if (use_voronoi_weights) then "-V" else ""} \
      ~{if defined(setup_tying_typeno) then ("-T " +  '"' + setup_tying_typeno + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_string_defaults: ": Use grammar <string>, defaults to STA"
    save_model_file: ": save model file to <file>"
    print_parameters_model: ": print out parameters of model"
    print_counts_used: ": print out counts used for model"
    _print_traceback: ": print traceback"
    _debugging_output: ": debugging output"
    _verbose_output: ": verbose output"
    turn_weighting_scheme: ": Turn off weighting scheme"
    force_recalculate_weights: ": Force recalculate weights (defaults to given when available)"
    use_voronoi_weights: ": Use Voronoi weights instead of GSC"
    setup_tying_typeno: ": Setup Tying Type\\n[No tying = 0; NT counts = 1; Gap Open/Extend counts = 2;\\nGap Open/Extend probs = 3; LR Symmetry 4 (default)]"
    options: ""
    ml_train: ""
    training_set_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}
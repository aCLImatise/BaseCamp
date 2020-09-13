version 1.0

task PModel {
  input {
    Boolean? print_transition_parameters
    Boolean? print_pairwise_emission
    Boolean? print_alignment_emission
    Boolean? print_background_gap
    Boolean? print_parameters_defaults
    Boolean? print_parameters_probs
    Boolean? linearize_output_gnuplot
    Boolean? include_labels_linear
    Boolean? options
    String mod_file
  }
  command <<<
    pModel \
      ~{mod_file} \
      ~{if (print_transition_parameters) then "-t" else ""} \
      ~{if (print_pairwise_emission) then "-x" else ""} \
      ~{if (print_alignment_emission) then "-f" else ""} \
      ~{if (print_background_gap) then "-d" else ""} \
      ~{if (print_parameters_defaults) then "-q" else ""} \
      ~{if (print_parameters_probs) then "-S" else ""} \
      ~{if (linearize_output_gnuplot) then "-l" else ""} \
      ~{if (include_labels_linear) then "-v" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    print_transition_parameters: ": Print transition parameters"
    print_pairwise_emission: ": Print 16x16 pairwise emission parameters"
    print_alignment_emission: ": Print 4x4 alignment emission parameters"
    print_background_gap: ": Print 4 background (to gap) parameters"
    print_parameters_defaults: ": Print parameters as scores (defaults to as probs)"
    print_parameters_probs: ": Print parameters as both probs and scores"
    linearize_output_gnuplot: ": Linearize output for gnuplot (not valid with -q or -S)"
    include_labels_linear: ": Include labels in linear output"
    options: ""
    mod_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
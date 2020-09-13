version 1.0

task HMMV {
  input {
    File? model_file
    File? alignment_file
    String? model_detail
    String? emission_layout
    Int? alignment_entries
    Int? maxwidth
    Int? scaling_factor
    Int? transition_cut_off
    String? output_format
    File? output_directory_path
    Boolean? model_name_toggle
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    HMMV \
      ~{if defined(model_file) then ("--modelfile " +  '"' + model_file + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignmentfile " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(model_detail) then ("--modeldetail " +  '"' + model_detail + '"') else ""} \
      ~{if defined(emission_layout) then ("--emissionlayout " +  '"' + emission_layout + '"') else ""} \
      ~{if defined(alignment_entries) then ("--alignmententries " +  '"' + alignment_entries + '"') else ""} \
      ~{if defined(maxwidth) then ("--maxwidth " +  '"' + maxwidth + '"') else ""} \
      ~{if defined(scaling_factor) then ("--scalingfactor " +  '"' + scaling_factor + '"') else ""} \
      ~{if defined(transition_cut_off) then ("--transitioncutoff " +  '"' + transition_cut_off + '"') else ""} \
      ~{if defined(output_format) then ("--outputformat " +  '"' + output_format + '"') else ""} \
      ~{if defined(output_directory_path) then ("--outputdirectorypath " +  '"' + output_directory_path + '"') else ""} \
      ~{if (model_name_toggle) then "--modelnametoggle" else ""} \
      ~{if (numeric_version) then "--numeric-version" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    model_file: "Path to hidden Markov model file"
    alignment_file: "Path to stockholm alignment file"
    model_detail: "Set verbosity of drawn models: minimal,\\nsimple, detailed"
    emission_layout: "Set layout of drawn models: score,\\nprobability, box (Default: box)"
    alignment_entries: "Set cutoff for included stockholm alignment\\nentries (Default: 50)"
    maxwidth: "Set maximal width of result figure (Default:\\n55)"
    scaling_factor: "Set uniform scaling factor for image size\\n(Default: 2)"
    transition_cut_off: "Minimal value for a transition probability\\nto be displayed (Default: 0.01)"
    output_format: "Output image format: pdf, svg, png, ps\\n(Default: pdf)"
    output_directory_path: "Output directory path (Default: none)"
    model_name_toggle: "Write all comma separted model names to\\nmodelNames file (Default: False)"
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
  }
}
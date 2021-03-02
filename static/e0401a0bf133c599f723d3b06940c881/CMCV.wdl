version 1.0

task CMCV {
  input {
    File? cm_compare_result_file
    File? models_file
    File? alignment_file
    String? model_detail
    String? model_layout
    String? emission_layout
    Int? alignment_entries
    Int? transition_cut_off
    Int? maxwidth
    Int? scaling_factor
    String? comparison_alignment
    File? output_directory_path
    Int? secondary_structure_vis_tool
    Boolean? model_name_toggle
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
    String comparison
  }
  command <<<
    CMCV \
      ~{comparison} \
      ~{if defined(cm_compare_result_file) then ("--cmcompareresultfile " +  '"' + cm_compare_result_file + '"') else ""} \
      ~{if defined(models_file) then ("--modelsfile " +  '"' + models_file + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignmentfile " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(model_detail) then ("--modeldetail " +  '"' + model_detail + '"') else ""} \
      ~{if defined(model_layout) then ("--modellayout " +  '"' + model_layout + '"') else ""} \
      ~{if defined(emission_layout) then ("--emissionlayout " +  '"' + emission_layout + '"') else ""} \
      ~{if defined(alignment_entries) then ("--alignmententries " +  '"' + alignment_entries + '"') else ""} \
      ~{if defined(transition_cut_off) then ("--transitioncutoff " +  '"' + transition_cut_off + '"') else ""} \
      ~{if defined(maxwidth) then ("--maxwidth " +  '"' + maxwidth + '"') else ""} \
      ~{if defined(scaling_factor) then ("--scalingfactor " +  '"' + scaling_factor + '"') else ""} \
      ~{if defined(comparison_alignment) then ("--comparisonalignment " +  '"' + comparison_alignment + '"') else ""} \
      ~{if defined(output_directory_path) then ("--outputdirectorypath " +  '"' + output_directory_path + '"') else ""} \
      ~{if defined(secondary_structure_vis_tool) then ("--secondarystructurevistool " +  '"' + secondary_structure_vis_tool + '"') else ""} \
      ~{if (model_name_toggle) then "--modelnametoggle" else ""} \
      ~{if (numeric_version) then "--numeric-version" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cm_compare_result_file: "Path to CMCompare result file"
    models_file: "Path to covariance model file"
    alignment_file: "Path to stockholm alignment file"
    model_detail: "Set verbosity of drawn models:\\nminimal, simple, detailed"
    model_layout: "Set layout of drawn models: flat, tree"
    emission_layout: "Set layout of drawn models: score,\\nprobability, box (Default: box)"
    alignment_entries: "Set cutoff for included stockholm\\nalignment entries (Default: 50)"
    transition_cut_off: "Minimal value for a transition\\nprobability to be displayed (Default:\\n0.01)"
    maxwidth: "Set maximal width of result figure\\n(Default: 100)"
    scaling_factor: "Set uniform scaling factor for image\\nsize (Default: 2)"
    comparison_alignment: "Set layout of drawn models: model,"
    output_directory_path: "Output directory path (Default: none)"
    secondary_structure_vis_tool: "Select tool for secondary structure\\nvisualisation: forna, r2r (Default:\\nnone)"
    model_name_toggle: "Write all comma separted model names\\nto modelNames file (Default: False)"
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
    comparison: "-f --outputformat=ITEM               Output image format: pdf, svg, png, ps"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
  }
}
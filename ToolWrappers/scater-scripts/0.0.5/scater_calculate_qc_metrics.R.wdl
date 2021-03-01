version 1.0

task ScatercalculateqcmetricsR {
  input {
    File? input_object_file
    String? exprs_values
    File? feature_controls
    File? cell_controls
    Int? percent_top
    String? detection_limit
    String? use_spikes
    File? output_object_file
  }
  command <<<
    scater_calculate_qc_metrics_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(feature_controls) then ("--feature-controls " +  '"' + feature_controls + '"') else ""} \
      ~{if defined(cell_controls) then ("--cell-controls " +  '"' + cell_controls + '"') else ""} \
      ~{if defined(percent_top) then ("--percent-top " +  '"' + percent_top + '"') else ""} \
      ~{if defined(detection_limit) then ("--detection-limit " +  '"' + detection_limit + '"') else ""} \
      ~{if defined(use_spikes) then ("--use-spikes " +  '"' + use_spikes + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    exprs_values: "A string indicating which ‘assays’ in the ‘object’ should be used to define expression."
    feature_controls: "file containing a list of the control files with one file per line. Each control file should have one feature (e.g. gene) per line. A named list is created (names derived from control file names) containing one or more vectors to identify feature controls (for example, ERCC spike-in genes, mitochondrial genes, etc)"
    cell_controls: "file (one cell per line) to be used to derive a vector of cell (sample) names used to identify cell controls (for example, blank wells or bulk controls)."
    percent_top: "Comma-separated list of integers. Each element is treated as a number of top genes to compute the percentage of library size occupied by the most highly expressed genes in each cell."
    detection_limit: "A numeric scalar to be passed to 'nexprs', specifying the lower detection limit for expression."
    use_spikes: "A logical scalar indicating whether existing spike-in sets in ‘object’ should be automatically added to 'feature_controls', see '?isSpike'."
    output_object_file: "file name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}
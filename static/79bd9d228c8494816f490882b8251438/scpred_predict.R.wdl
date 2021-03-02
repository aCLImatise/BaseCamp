version 1.0

task ScpredPredictR {
  input {
    File? input_object
    File? pred_data
    String? normalise_data
    String? normalisation_method
    Float? scale_factor
    String? threshold_level
    Int? max_iter_harmony
    String? recompute_alignment
    String? reference_scaling
    Int? random_seed
    File? output_path
    File? plot_path
  }
  command <<<
    scpred_predict_R \
      ~{if defined(input_object) then ("--input-object " +  '"' + input_object + '"') else ""} \
      ~{if defined(pred_data) then ("--pred-data " +  '"' + pred_data + '"') else ""} \
      ~{if defined(normalise_data) then ("--normalise-data " +  '"' + normalise_data + '"') else ""} \
      ~{if defined(normalisation_method) then ("--normalisation-method " +  '"' + normalisation_method + '"') else ""} \
      ~{if defined(scale_factor) then ("--scale-factor " +  '"' + scale_factor + '"') else ""} \
      ~{if defined(threshold_level) then ("--threshold-level " +  '"' + threshold_level + '"') else ""} \
      ~{if defined(max_iter_harmony) then ("--max-iter-harmony " +  '"' + max_iter_harmony + '"') else ""} \
      ~{if defined(recompute_alignment) then ("--recompute-alignment " +  '"' + recompute_alignment + '"') else ""} \
      ~{if defined(reference_scaling) then ("--reference-scaling " +  '"' + reference_scaling + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""} \
      ~{if defined(plot_path) then ("--plot-path " +  '"' + plot_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  parameter_meta {
    input_object: "Path to the input object of scPred or seurat class in .rds format"
    pred_data: "Path to the input prediction matrix in .rds format"
    normalise_data: "Should the predicted expression data be normalised? Default: False"
    normalisation_method: "If --normalise-data specified, what normalisation method to use? Default: LogNormalize\\nNB: normalisation method must be identical to that used for reference data"
    scale_factor: "If --normalise-data specified, what scale factor should be applied?\\nNote: for CPM normalisation, select 1e6"
    threshold_level: "Classification threshold value"
    max_iter_harmony: "Maximum number of rounds to run Harmony. One round of Harmony involves one clustering and one correction step"
    recompute_alignment: "Recompute alignment? Useful if scPredict() has already been run. Default: TRUE"
    reference_scaling: "Scale new dataset based on means and stdevs from reference dataset before alignment. Default: TRUE"
    random_seed: "Random number generator seed"
    output_path: "Output path for Seurat object holding predicted values"
    plot_path: "Output path for prediction probabilities histograms in .png format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_plot_path = "${in_plot_path}"
  }
}
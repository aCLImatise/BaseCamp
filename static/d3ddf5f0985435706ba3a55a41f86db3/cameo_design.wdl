version 1.0

task CameoDesign {
  input {
    File? output_filename_multiple
    Boolean? format
    Boolean? aerobic
    Int? cores
    Boolean? differential_fva
    Boolean? heuristic_optimization
    Int? max_pathway_predictions
    Int? differential_fva_points
    Int? pathway_prediction_timeout
    Int? heuristic_optimization_timeout
    Boolean? logging
    String product
  }
  command <<<
    cameo design \
      ~{product} \
      ~{if defined(output_filename_multiple) then ("--output " +  '"' + output_filename_multiple + '"') else ""} \
      ~{true="--format" false="" format} \
      ~{true="--aerobic" false="" aerobic} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--differential-fva" false="" differential_fva} \
      ~{true="--heuristic-optimization" false="" heuristic_optimization} \
      ~{if defined(max_pathway_predictions) then ("--max-pathway-predictions " +  '"' + max_pathway_predictions + '"') else ""} \
      ~{if defined(differential_fva_points) then ("--differential-fva-points " +  '"' + differential_fva_points + '"') else ""} \
      ~{if defined(pathway_prediction_timeout) then ("--pathway-prediction-timeout " +  '"' + pathway_prediction_timeout + '"') else ""} \
      ~{if defined(heuristic_optimization_timeout) then ("--heuristic-optimization-timeout " +  '"' + heuristic_optimization_timeout + '"') else ""} \
      ~{true="--logging" false="" logging}
  >>>
  parameter_meta {
    output_filename_multiple: "Output filename. Multiple output files can be provided (pair with respective format options)."
    format: "[xlsx|csv|tsv|pickle] Output file format (default csv)."
    aerobic: "/ --anaerobic         Make oxygen available to the host organism (default)."
    cores: "RANGE           Number of CPU cores to use (default 1)."
    differential_fva: "/ --no-differential-fva Perform differential flux variability analysis to determine flux modulation targets (default)."
    heuristic_optimization: "/ --no-heuristic-optimization Find gene knockout targets through heuristic optimization (default)."
    max_pathway_predictions: "Maximum number of heterologous pathways to predict (default 1)."
    differential_fva_points: "Grid points for differential FVA (default 10)."
    pathway_prediction_timeout: "Time limit (min) for individual pathway predictions (default 10 min)."
    heuristic_optimization_timeout: "Time limit (min) on individual heuristic optimizations (default 45 min)."
    logging: "[CRITICAL|ERROR|WARNING|INFO|DEBUG] Logging level (default WARNING)."
    product: ""
  }
}
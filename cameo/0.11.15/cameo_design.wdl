version 1.0

task CameoDesign {
  input {
    File? output_filename_multiple
    File? format
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
      ~{if (format) then "--format" else ""} \
      ~{if (aerobic) then "--aerobic" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (differential_fva) then "--differential-fva" else ""} \
      ~{if (heuristic_optimization) then "--heuristic-optimization" else ""} \
      ~{if defined(max_pathway_predictions) then ("--max-pathway-predictions " +  '"' + max_pathway_predictions + '"') else ""} \
      ~{if defined(differential_fva_points) then ("--differential-fva-points " +  '"' + differential_fva_points + '"') else ""} \
      ~{if defined(pathway_prediction_timeout) then ("--pathway-prediction-timeout " +  '"' + pathway_prediction_timeout + '"') else ""} \
      ~{if defined(heuristic_optimization_timeout) then ("--heuristic-optimization-timeout " +  '"' + heuristic_optimization_timeout + '"') else ""} \
      ~{if (logging) then "--logging" else ""}
  >>>
  parameter_meta {
    output_filename_multiple: "Output filename. Multiple output files can\\nbe provided (pair with respective format\\noptions)."
    format: "[xlsx|csv|tsv|pickle]\\nOutput file format (default csv)."
    aerobic: "/ --anaerobic         Make oxygen available to the host organism\\n(default)."
    cores: "RANGE           Number of CPU cores to use (default 1)."
    differential_fva: "/ --no-differential-fva\\nPerform differential flux variability\\nanalysis to determine flux modulation\\ntargets (default)."
    heuristic_optimization: "/ --no-heuristic-optimization\\nFind gene knockout targets through heuristic\\noptimization (default)."
    max_pathway_predictions: "Maximum number of heterologous pathways to\\npredict (default 1)."
    differential_fva_points: "Grid points for differential FVA (default\\n10)."
    pathway_prediction_timeout: "Time limit (min) for individual pathway\\npredictions (default 10 min)."
    heuristic_optimization_timeout: "Time limit (min) on individual heuristic\\noptimizations (default 45 min)."
    logging: "[CRITICAL|ERROR|WARNING|INFO|DEBUG]\\nLogging level (default WARNING)."
    product: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_multiple = "${in_output_filename_multiple}"
    File out_format = "${in_format}"
  }
}
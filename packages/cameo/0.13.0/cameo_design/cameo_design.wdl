version 1.0

task CameoDesign {
  input {
    File? output_filename_files
    File? format
    Boolean? anaerobic
    Int? cores
    Boolean? no_differential_fva
    Boolean? no_heuristic_optimization
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
      ~{if defined(output_filename_files) then ("--output " +  '"' + output_filename_files + '"') else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (anaerobic) then "--anaerobic" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (no_differential_fva) then "--no-differential-fva" else ""} \
      ~{if (no_heuristic_optimization) then "--no-heuristic-optimization" else ""} \
      ~{if defined(max_pathway_predictions) then ("--max-pathway-predictions " +  '"' + max_pathway_predictions + '"') else ""} \
      ~{if defined(differential_fva_points) then ("--differential-fva-points " +  '"' + differential_fva_points + '"') else ""} \
      ~{if defined(pathway_prediction_timeout) then ("--pathway-prediction-timeout " +  '"' + pathway_prediction_timeout + '"') else ""} \
      ~{if defined(heuristic_optimization_timeout) then ("--heuristic-optimization-timeout " +  '"' + heuristic_optimization_timeout + '"') else ""} \
      ~{if (logging) then "--logging" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cameo:0.13.0--py_0"
  }
  parameter_meta {
    output_filename_files: "Output filename. Multiple output files can\\nbe provided (pair with respective format\\noptions)."
    format: "[xlsx|csv|tsv|pickle]\\nOutput file format (default csv)."
    anaerobic: "Make oxygen available to the host organism\\n(default)."
    cores: "RANGE           Number of CPU cores to use (default 1)."
    no_differential_fva: "Perform differential flux variability\\nanalysis to determine flux modulation\\ntargets (default)."
    no_heuristic_optimization: "Find gene knockout targets through heuristic\\noptimization (default)."
    max_pathway_predictions: "Maximum number of heterologous pathways to\\npredict (default 1)."
    differential_fva_points: "Grid points for differential FVA (default\\n10)."
    pathway_prediction_timeout: "Time limit (min) for individual pathway\\npredictions (default 10 min)."
    heuristic_optimization_timeout: "Time limit (min) on individual heuristic\\noptimizations (default 45 min)."
    logging: "[CRITICAL|ERROR|WARNING|INFO|DEBUG]\\nLogging level (default WARNING)."
    product: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_files = "${in_output_filename_files}"
    File out_format = "${in_format}"
  }
}
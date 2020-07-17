version 1.0

task ScmapGetStdOutput.R {
  input {
    String? predictions_file
    String? output_table
    Boolean? include_scores
    String? index
    String? tool
    String? sim_col_name
  }
  command <<<
    scmap_get_std_output.R \
      ~{if defined(predictions_file) then ("--predictions-file " +  '"' + predictions_file + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""} \
      ~{true="--include-scores" false="" include_scores} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(sim_col_name) then ("--sim-col-name " +  '"' + sim_col_name + '"') else ""}
  >>>
  parameter_meta {
    predictions_file: "Path to the predictions file in text format"
    output_table: "Path to the final output file in text format"
    include_scores: "Should prediction scores be included in output? Default: FALSE"
    index: "Path to the index object in .rds format (Optional; required to add dataset of origin to output table)"
    tool: "What tool produced output? scmap-cell or scmap-cluster"
    sim_col_name: "Column name of similarity scores"
  }
}
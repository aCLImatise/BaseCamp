version 1.0

task ScmapGetStdOutputR {
  input {
    File? predictions_file
    File? output_table
    Boolean? include_scores
    File? index
    String? tool
    String? sim_col_name
  }
  command <<<
    scmap_get_std_output_R \
      ~{if defined(predictions_file) then ("--predictions-file " +  '"' + predictions_file + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""} \
      ~{if (include_scores) then "--include-scores" else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(sim_col_name) then ("--sim-col-name " +  '"' + sim_col_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    predictions_file: "Path to the predictions file in text format"
    output_table: "Path to the final output file in text format"
    include_scores: "Should prediction scores be included in output? Default: FALSE"
    index: "Path to the index object in .rds format (Optional; required to add dataset of origin to output table)"
    tool: "What tool produced output? scmap-cell or scmap-cluster"
    sim_col_name: "Column name of similarity scores"
  }
  output {
    File out_stdout = stdout()
    File out_output_table = "${in_output_table}"
    File out_index = "${in_index}"
  }
}
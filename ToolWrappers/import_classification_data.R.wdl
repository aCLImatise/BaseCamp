version 1.0

task ImportClassificationDataR {
  input {
    File? config_file
    String? tool
    Boolean? classifiers_output_dir
    Boolean? get_sd_rf
    Boolean? condensed_sd_rf
    File? sd_rf_output_dir
    Boolean? get_tool_perf_table
    File? tool_perf_table_output_path
  }
  command <<<
    import_classification_data_R \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if (classifiers_output_dir) then "--classifiers-output-dir" else ""} \
      ~{if (get_sd_rf) then "--get-sdrf" else ""} \
      ~{if (condensed_sd_rf) then "--condensed-sdrf" else ""} \
      ~{if defined(sd_rf_output_dir) then ("--sdrf-output-dir " +  '"' + sd_rf_output_dir + '"') else ""} \
      ~{if (get_tool_perf_table) then "--get-tool-perf-table" else ""} \
      ~{if defined(tool_perf_table_output_path) then ("--tool-perf-table-output-path " +  '"' + tool_perf_table_output_path + '"') else ""}
  >>>
  parameter_meta {
    config_file: "Config file in .yaml format"
    tool: "Which tool's classifiers should be imported?"
    classifiers_output_dir: "Path for directory storing imported classifiers"
    get_sd_rf: "Should SDRF file(s) be downloaded? Default: FALSE"
    condensed_sd_rf: "If --get-sdrf is set to TRUE, import condensed SDRF? By default, a normal version is imported. Default: FALSE"
    sd_rf_output_dir: "Output path for imported SDRF files directory"
    get_tool_perf_table: "Should the tool performance table be imported? Default: FALSE"
    tool_perf_table_output_path: "Output path for imported SDRF files directory"
  }
  output {
    File out_stdout = stdout()
    File out_sd_rf_output_dir = "${in_sd_rf_output_dir}"
    File out_tool_perf_table_output_path = "${in_tool_perf_table_output_path}"
  }
}
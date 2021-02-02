version 1.0

task FlowcraftReport {
  input {
    File? specify_path_pipeline
    String? url
    File? trace_file
    File? log_file
    Boolean? watch
  }
  command <<<
    flowcraft report \
      ~{if defined(specify_path_pipeline) then ("-i " +  '"' + specify_path_pipeline + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (watch) then "--watch" else ""}
  >>>
  parameter_meta {
    specify_path_pipeline: "Specify the path to the pipeline report JSON file."
    url: "Specify the URL to where the data should be broadcast"
    trace_file: "Specify the nextflow trace file. Only applicable in\\ncombination with --watch option."
    log_file: "Specify the nextflow log file. Only applicable in\\ncombination with --watch option."
    watch: "Run the report in watch mode. This option will track\\nthe generation of reports during the execution of the\\npipeline, allowing for the visualization of the\\nreports in real-time\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
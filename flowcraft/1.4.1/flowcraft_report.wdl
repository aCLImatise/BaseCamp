version 1.0

task FlowcraftReport {
  input {
    String? specify_path_pipeline
    String? url
    String? trace_file
    String? log_file
    Boolean? watch
  }
  command <<<
    flowcraft report \
      ~{if defined(specify_path_pipeline) then ("-i " +  '"' + specify_path_pipeline + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--watch" false="" watch}
  >>>
  parameter_meta {
    specify_path_pipeline: "Specify the path to the pipeline report JSON file."
    url: "Specify the URL to where the data should be broadcast"
    trace_file: "Specify the nextflow trace file. Only applicable in combination with --watch option."
    log_file: "Specify the nextflow log file. Only applicable in combination with --watch option."
    watch: "Run the report in watch mode. This option will track the generation of reports during the execution of the pipeline, allowing for the visualization of the reports in real-time"
  }
}
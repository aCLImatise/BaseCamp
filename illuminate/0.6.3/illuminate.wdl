version 1.0

task Illuminate {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    Boolean? interactive
    String? name
    Boolean? all
    Boolean? print_flowcelllayout_and
    Boolean? tile
    Boolean? quality
    Boolean? index
    Boolean? error
    Boolean? cor_int
    Boolean? extraction
    Boolean? control
    Boolean? csv
    Boolean? json
    String? out_path
    Boolean? timestamp
    String data_path
  }
  command <<<
    illuminate \
      ~{data_path} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{true="--interactive" false="" interactive} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--meta" false="" print_flowcelllayout_and} \
      ~{true="--tile" false="" tile} \
      ~{true="--quality" false="" quality} \
      ~{true="--index" false="" index} \
      ~{true="--error" false="" error} \
      ~{true="--corint" false="" cor_int} \
      ~{true="--extraction" false="" extraction} \
      ~{true="--control" false="" control} \
      ~{true="--csv" false="" csv} \
      ~{true="--json" false="" json} \
      ~{if defined(out_path) then ("--outpath " +  '"' + out_path + '"') else ""} \
      ~{true="--timestamp" false="" timestamp}
  >>>
  parameter_meta {
    verbose: "Increase verbosity           "
    quiet: "Suppress all console output   "
    debug: "Increase verbosity and prefix output with Unix timestamps. "
    interactive: "Load dataset into iPython for interactive fun."
    name: "Set a name for this dataset. [default: meta.runID]"
    all: "Parse and print (or dump) everything"
    print_flowcelllayout_and: "Print flowcell_layout and read_config"
    tile: "Parse tile metrics"
    quality: "Parse quality metrics "
    index: "Parse index metrics"
    error: "Parse error metrics"
    cor_int: "Parse corrected intensity metrics"
    extraction: "Parse extraction metrics"
    control: "Parse control metrics"
    csv: "Output raw data from parser as CSV "
    json: "Output raw data from parser as JSON"
    out_path: "Output parser results to directory"
    timestamp: "Generate filename(s) containing Unix timestamps (format: timestamp.metric.format)"
    data_path: ""
  }
}
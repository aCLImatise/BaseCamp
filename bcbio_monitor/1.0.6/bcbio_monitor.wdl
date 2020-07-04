version 1.0

task BcbioMonitor {
  input {
    String? config
    String? title
    Boolean? no_update
    Boolean? no_browser
    Boolean? local
    String log_file
  }
  command <<<
    bcbio_monitor \
      ~{log_file} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--no-update" false="" no_update} \
      ~{true="--no-browser" false="" no_browser} \
      ~{true="--local" false="" local}
  >>>
  parameter_meta {
    config: "PAth to the configuration file, defaults to ~/.bcbio/monitor.yaml"
    title: "Title (or name) for the analysis, i.e NA12878 test"
    no_update: "Don't update frontend with the last log line read (less requests)"
    no_browser: "Don't open a new browser tab"
    local: "Force the monitor to look for the log file locally (regardless of the configuration file.)"
    log_file: "Path to the file bcbio-nextgen-debug.log"
  }
}
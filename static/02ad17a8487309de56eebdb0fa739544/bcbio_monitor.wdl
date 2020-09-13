version 1.0

task BcbioMonitor {
  input {
    File? config
    Int? title
    Boolean? no_update
    Boolean? no_browser
    Boolean? local
  }
  command <<<
    bcbio_monitor \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (no_update) then "--no-update" else ""} \
      ~{if (no_browser) then "--no-browser" else ""} \
      ~{if (local) then "--local" else ""}
  >>>
  parameter_meta {
    config: "PAth to the configuration file, defaults to\\n~/.bcbio/monitor.yaml"
    title: "Title (or name) for the analysis, i.e NA12878 test"
    no_update: "Don't update frontend with the last log line read (less\\nrequests)"
    no_browser: "Don't open a new browser tab"
    local: "Force the monitor to look for the log file locally\\n(regardless of the configuration file.)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
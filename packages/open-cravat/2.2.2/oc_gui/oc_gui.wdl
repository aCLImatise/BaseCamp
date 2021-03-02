version 1.0

task OcGui {
  input {
    Boolean? multiuser
    Boolean? headless
    Boolean? http_only
    Boolean? debug
    String? webapp
    String result
  }
  command <<<
    oc gui \
      ~{result} \
      ~{if (multiuser) then "--multiuser" else ""} \
      ~{if (headless) then "--headless" else ""} \
      ~{if (http_only) then "--http-only" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(webapp) then ("--webapp " +  '"' + webapp + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    multiuser: "Runs in multiuser mode"
    headless: "do not open the cravat web page"
    http_only: "Force not to accept https connection"
    debug: "Console echoes exceptions written to log file."
    webapp: "Name of OpenCRAVAT webapp module to run"
    result: "Path to a CRAVAT result SQLite file"
  }
  output {
    File out_stdout = stdout()
  }
}
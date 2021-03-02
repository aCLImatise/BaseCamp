version 1.0

task DgeniesRun {
  input {
    String? mode
    Boolean? run_debug_mode
    String? host
    String? port
    Boolean? no_cron_s
    Boolean? no_browser
    String? debug
  }
  command <<<
    dgenies run \
      ~{debug} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (run_debug_mode) then "-d" else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (no_cron_s) then "--no-crons" else ""} \
      ~{if (no_browser) then "--no-browser" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Mode into run the application"
    run_debug_mode: "[DEBUG], --debug [DEBUG]\\nRun in debug mode"
    host: "Host into run the application"
    port: "Port into run the application"
    no_cron_s: "[NO_CRONS]\\nDo not run crons (for debug only, ignored for\\nstandalone mode)"
    no_browser: "[NO_BROWSER]\\nDo not start the browser (Start of browser is always\\ndisabled in debug mode)\\n"
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}
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
      ~{true="-d" false="" run_debug_mode} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{true="--no-crons" false="" no_cron_s} \
      ~{true="--no-browser" false="" no_browser}
  >>>
  parameter_meta {
    mode: "Mode into run the application"
    run_debug_mode: "[DEBUG], --debug [DEBUG] Run in debug mode"
    host: "Host into run the application"
    port: "Port into run the application"
    no_cron_s: "[NO_CRONS] Do not run crons (for debug only, ignored for standalone mode)"
    no_browser: "[NO_BROWSER] Do not start the browser (Start of browser is always disabled in debug mode)"
    debug: ""
  }
}
version 1.0

task Digestiflowcli {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? dry_run
    Int? threads
    Boolean? log_token
    String? web_url
  }
  command <<<
    digestiflow_cli \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (log_token) then "--log-token" else ""} \
      ~{if defined(web_url) then ("--web-url " +  '"' + web_url + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity"
    quiet: "Decrease verbosity"
    dry_run: "Do not perform any modifying operations"
    threads: "Number of additional threads to use for (de)compression in I/O. [default: 0]"
    log_token: "Print authentation token to log file (useful for debugging, possible leaking security\\nissue)"
    web_url: "The URL with the Digestiflow Web UI server."
  }
  output {
    File out_stdout = stdout()
  }
}
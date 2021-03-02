version 1.0

task SampHub {
  input {
    String? secret
    String? addr
    Int? port
    File? lock_file
    Boolean? no_web_profile
    Int? pool_size
    Int? timeout
    Int? client_timeout
    String? log_level
    File? log_output
    String? label
    Boolean? multi
    Float three_dot_zero_dot_five
  }
  command <<<
    samp_hub \
      ~{three_dot_zero_dot_five} \
      ~{if defined(secret) then ("--secret " +  '"' + secret + '"') else ""} \
      ~{if defined(addr) then ("--addr " +  '"' + addr + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(lock_file) then ("--lockfile " +  '"' + lock_file + '"') else ""} \
      ~{if (no_web_profile) then "--no-web-profile" else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(client_timeout) then ("--client-timeout " +  '"' + client_timeout + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_output) then ("--log-output " +  '"' + log_output + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if (multi) then "--multi" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    secret: "custom secret code."
    addr: "listening address (or IP)."
    port: "listening port number."
    lock_file: "custom lockfile."
    no_web_profile: "run the Hub disabling the Web Profile."
    pool_size: "the socket connections pool size."
    timeout: "set the Hub inactivity timeout in SECONDS. By default\\nit is set to 0, that is the Hub never expires."
    client_timeout: "set the client inactivity timeout in SECONDS. By\\ndefault it is set to 0, that is the client never\\nexpires."
    log_level: "set the Hub instance log level (OFF, ERROR, WARNING,\\nINFO, DEBUG)."
    log_output: "set the output file for the log messages."
    label: "assign a LABEL to the Hub."
    multi: "run the Hub in multi-instance mode generating a custom\\nlockfile with a random name.\\n"
    three_dot_zero_dot_five: ""
  }
  output {
    File out_stdout = stdout()
    File out_log_output = "${in_log_output}"
  }
}
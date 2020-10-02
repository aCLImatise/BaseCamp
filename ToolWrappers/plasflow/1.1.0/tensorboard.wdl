version 1.0

task Tensorboard {
  input {
    Boolean? run_app_debug
    String? host
    String? inspect
    String? logdir
    String? port
    Boolean? purge_orphaned_data
    Boolean? no_debug
    String? var_7
  }
  command <<<
    tensorboard \
      ~{var_7} \
      ~{if (run_app_debug) then "--debug" else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(inspect) then ("--inspect " +  '"' + inspect + '"') else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (purge_orphaned_data) then "--purge_orphaned_data" else ""} \
      ~{if (no_debug) then "--nodebug" else ""}
  >>>
  parameter_meta {
    run_app_debug: "[DEBUG]       Whether to run the app in debug mode. This increases"
    host: "What host to listen to. Defaults to serving on"
    inspect: "tensorboard --inspect"
    logdir: "See"
    port: "What port to serve TensorBoard on."
    purge_orphaned_data: "[PURGE_ORPHANED_DATA]"
    no_debug: ""
    var_7: ""
  }
  output {
    File out_stdout = stdout()
  }
}
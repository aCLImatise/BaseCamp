version 1.0

task CaperDebug {
  input {
    Boolean? dry_run
    Boolean? debug
    Boolean? show_completed_task
    String? port
    String? ip
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    String wf_id_or_label
  }
  command <<<
    caper debug \
      ~{wf_id_or_label} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (show_completed_task) then "--show-completed-task" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    show_completed_task: "Show information about completed tasks."
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of\\na server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A\\nheartbeat file older than this interval will be\\nignored.\\n"
    wf_id_or_label: "List of workflow IDs to find matching workflows to\\ncommit a specified action (list, metadata and abort).\\nWildcards (* and ?) are allowed."
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CaperTroubleshoot {
  input {
    Boolean? dry_run
    Boolean? debug
    Boolean? show_completed_task
    String? port
    String? ip
    Boolean? no_server_heartbeat
    String? server_heartbeat_file
    String? server_heartbeat_timeout
    String wf_id_or_label
  }
  command <<<
    caper troubleshoot \
      ~{wf_id_or_label} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--debug" false="" debug} \
      ~{true="--show-completed-task" false="" show_completed_task} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" no_server_heartbeat} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    show_completed_task: "Show information about completed tasks."
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of a server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this interval will be ignored."
    wf_id_or_label: "List of workflow IDs to find matching workflows to commit a specified action (list, metadata and abort). Wildcards (* and ?) are allowed."
  }
}
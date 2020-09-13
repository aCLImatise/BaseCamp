version 1.0

task CaperList {
  input {
    Boolean? dry_run
    Boolean? debug
    String? port
    String? ip
    Boolean? no_server_heartbeat
    File? server_heartbeat_file
    File? server_heartbeat_timeout
    String? format
    Int? hide_result_before
    Boolean? hide_sub_workflow
    String wf_id_or_label
  }
  command <<<
    caper list \
      ~{wf_id_or_label} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if (no_server_heartbeat) then "--no-server-heartbeat" else ""} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(hide_result_before) then ("--hide-result-before " +  '"' + hide_result_before + '"') else ""} \
      ~{if (hide_sub_workflow) then "--hide-subworkflow" else ""}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of\\na server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A\\nheartbeat file older than this interval will be\\nignored."
    format: "Comma-separated list of items to be shown for \\\"list\\\"\\nsubcommand. Any key name in workflow JSON from\\nCromwell server's response is allowed. Available keys\\nare \\\"id\\\" (workflow ID), \\\"status\\\", \\\"str_label\\\", \\\"name\\\"\\n(WDL/CWL name), \\\"submission\\\" (date/time), \\\"start\\\",\\n\\\"end\\\" and \\\"user\\\". \\\"str_label\\\" is a special key for\\nCaper. See help context of \\\"--str-label\\\" for details"
    hide_result_before: "Hide workflows submitted before this date/time. Use\\nthe same (or shorter) date/time format shown in \\\"caper\\nlist\\\". e.g. 2019-06-13, 2019-06-13T10:07"
    hide_sub_workflow: "Hide subworkflows from \\\"caper list\\\"."
    wf_id_or_label: "List of workflow IDs to find matching workflows to\\ncommit a specified action (list, metadata and abort).\\nWildcards (* and ?) are allowed."
  }
  output {
    File out_stdout = stdout()
  }
}
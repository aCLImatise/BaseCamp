version 1.0

task CaperList {
  input {
    Boolean? dry_run
    Boolean? debug
    String? port
    String? ip
    Boolean? no_server_heartbeat
    String? server_heartbeat_file
    String? server_heartbeat_timeout
    String? format
    String? hide_result_before
    Boolean? hide_sub_workflow
    String wf_id_or_label
  }
  command <<<
    caper list \
      ~{wf_id_or_label} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--debug" false="" debug} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{true="--no-server-heartbeat" false="" no_server_heartbeat} \
      ~{if defined(server_heartbeat_file) then ("--server-heartbeat-file " +  '"' + server_heartbeat_file + '"') else ""} \
      ~{if defined(server_heartbeat_timeout) then ("--server-heartbeat-timeout " +  '"' + server_heartbeat_timeout + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(hide_result_before) then ("--hide-result-before " +  '"' + hide_result_before + '"') else ""} \
      ~{true="--hide-subworkflow" false="" hide_sub_workflow}
  >>>
  parameter_meta {
    dry_run: "Caper does not take any action."
    debug: "Prints all logs >= DEBUG level"
    port: "Port for Caper server"
    ip: "IP address for Caper server"
    no_server_heartbeat: "Disable server heartbeat file."
    server_heartbeat_file: "Heartbeat file for Caper clients to get IP and port of a server"
    server_heartbeat_timeout: "Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this interval will be ignored."
    format: "Comma-separated list of items to be shown for \"list\" subcommand. Any key name in workflow JSON from Cromwell server's response is allowed. Available keys are \"id\" (workflow ID), \"status\", \"str_label\", \"name\" (WDL/CWL name), \"submission\" (date/time), \"start\", \"end\" and \"user\". \"str_label\" is a special key for Caper. See help context of \"--str-label\" for details"
    hide_result_before: "Hide workflows submitted before this date/time. Use the same (or shorter) date/time format shown in \"caper list\". e.g. 2019-06-13, 2019-06-13T10:07"
    hide_sub_workflow: "Hide subworkflows from \"caper list\"."
    wf_id_or_label: "List of workflow IDs to find matching workflows to commit a specified action (list, metadata and abort). Wildcards (* and ?) are allowed."
  }
}
class: CommandLineTool
id: caper_list.cwl
inputs:
- id: in_dry_run
  doc: Caper does not take any action.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_port
  doc: Port for Caper server
  type: string?
  inputBinding:
    prefix: --port
- id: in_ip
  doc: IP address for Caper server
  type: string?
  inputBinding:
    prefix: --ip
- id: in_no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean?
  inputBinding:
    prefix: --no-server-heartbeat
- id: in_server_heartbeat_file
  doc: "Heartbeat file for Caper clients to get IP and port of\na server"
  type: File?
  inputBinding:
    prefix: --server-heartbeat-file
- id: in_server_heartbeat_timeout
  doc: "Timeout for a heartbeat file in Milliseconds. A\nheartbeat file older than\
    \ this interval will be\nignored."
  type: File?
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: in_format
  doc: "Comma-separated list of items to be shown for \"list\"\nsubcommand. Any key\
    \ name in workflow JSON from\nCromwell server's response is allowed. Available\
    \ keys\nare \"id\" (workflow ID), \"status\", \"str_label\", \"name\"\n(WDL/CWL\
    \ name), \"submission\" (date/time), \"start\",\n\"end\" and \"user\". \"str_label\"\
    \ is a special key for\nCaper. See help context of \"--str-label\" for details"
  type: string?
  inputBinding:
    prefix: --format
- id: in_hide_result_before
  doc: "Hide workflows submitted before this date/time. Use\nthe same (or shorter)\
    \ date/time format shown in \"caper\nlist\". e.g. 2019-06-13, 2019-06-13T10:07"
  type: long?
  inputBinding:
    prefix: --hide-result-before
- id: in_hide_sub_workflow
  doc: Hide subworkflows from "caper list".
  type: boolean?
  inputBinding:
    prefix: --hide-subworkflow
- id: in_wf_id_or_label
  doc: "List of workflow IDs to find matching workflows to\ncommit a specified action\
    \ (list, metadata and abort).\nWildcards (* and ?) are allowed."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- caper
- list

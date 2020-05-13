class: CommandLineTool
id: caper_list.cwl
inputs:
- id: wf_id_or_label
  doc: List of workflow IDs to find matching workflows to commit a specified action
    (list, metadata and abort). Wildcards (* and ?) are allowed.
  type: string
  inputBinding:
    position: 0
- id: dry_run
  doc: Caper does not take any action.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
- id: port
  doc: Port for Caper server
  type: string
  inputBinding:
    prefix: --port
- id: ip
  doc: IP address for Caper server
  type: string
  inputBinding:
    prefix: --ip
- id: no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean
  inputBinding:
    prefix: --no-server-heartbeat
- id: server_heartbeat_file
  doc: Heartbeat file for Caper clients to get IP and port of a server
  type: string
  inputBinding:
    prefix: --server-heartbeat-file
- id: server_heartbeat_timeout
  doc: Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this
    interval will be ignored.
  type: string
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: format
  doc: Comma-separated list of items to be shown for "list" subcommand. Any key name
    in workflow JSON from Cromwell server's response is allowed. Available keys are
    "id" (workflow ID), "status", "str_label", "name" (WDL/CWL name), "submission"
    (date/time), "start", "end" and "user". "str_label" is a special key for Caper.
    See help context of "--str-label" for details
  type: string
  inputBinding:
    prefix: --format
- id: hide_result_before
  doc: Hide workflows submitted before this date/time. Use the same (or shorter) date/time
    format shown in "caper list". e.g. 2019-06-13, 2019-06-13T10:07
  type: string
  inputBinding:
    prefix: --hide-result-before
- id: hide_sub_workflow
  doc: Hide subworkflows from "caper list".
  type: boolean
  inputBinding:
    prefix: --hide-subworkflow
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
- list

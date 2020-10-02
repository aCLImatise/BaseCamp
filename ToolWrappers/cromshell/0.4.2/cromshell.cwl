class: CommandLineTool
id: cromshell.cwl
inputs:
- id: in_set_curl_connect
  doc: "Set the curl connect timeout to TIMEOUT seconds.\nAlso sets the curl max timeout\
    \ to 2*TIMEOUT seconds.\nTIMEOUT must be an integer."
  type: long
  inputBinding:
    prefix: -t
- id: in_wait_workflow_transition
  doc: "Wait for workflow to transition from 'Submitted' to some other status\nbefore\
    \ cromshell exits"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_enable_prettyprinting
  doc: Enable pretty-printing.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_expand_subworkflow_information
  doc: Expand sub-workflow information.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_color_output_completion
  doc: Color the output by completion status.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_check_completion_status
  doc: Check completion status of all unfinished jobs.
  type: boolean
  inputBinding:
    prefix: -u
- id: in_provided_will_only
  doc: If provided, will only remove jobs with the given STATUS from the local list.
  type: string
  inputBinding:
    prefix: -s
- id: in_included_wdl_zip_file
  doc: Zip file containing any WDL files included in the input WDL
  type: string
  inputBinding:
    position: 0
- id: in_jobs_dot
  doc: 'Query workflow status:'
  type: string
  inputBinding:
    position: 0
- id: in_email
  doc: Email address to which to send the notification.
  type: string
  inputBinding:
    position: 0
- id: in_daemon_server
  doc: Server on which to run the notification daemon.
  type: string
  inputBinding:
    position: 1
- id: in_anything_but_zero
  doc: FAILURE/ERROR
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cromshell

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cromshell.cwl
inputs:
- id: set_curl_connect
  doc: Set the curl connect timeout to TIMEOUT seconds. Also sets the curl max timeout
    to 2*TIMEOUT seconds. TIMEOUT must be an integer.
  type: string
  inputBinding:
    prefix: -t
- id: wait_workflow_transition
  doc: Wait for workflow to transition from 'Submitted' to some other status before
    cromshell exits
  type: boolean
  inputBinding:
    prefix: -w
- id: enable_prettyprinting
  doc: Enable pretty-printing.
  type: boolean
  inputBinding:
    prefix: -p
- id: expand_subworkflow_information
  doc: Expand sub-workflow information.
  type: boolean
  inputBinding:
    prefix: -x
- id: color_output_completion
  doc: Color the output by completion status.
  type: boolean
  inputBinding:
    prefix: -c
- id: check_completion_status
  doc: Check completion status of all unfinished jobs.
  type: boolean
  inputBinding:
    prefix: -u
- id: provided_will_only
  doc: If provided, will only remove jobs with the given STATUS from the local list.
  type: string
  inputBinding:
    prefix: -s
- id: included_wdl_zip_file
  doc: Zip file containing any WDL files included in the input WDL
  type: string
  inputBinding:
    position: 0
- id: email
  doc: Email address to which to send the notification.
  type: string
  inputBinding:
    position: 0
- id: daemon_server
  doc: Server on which to run the notification daemon.
  type: string
  inputBinding:
    position: 1
- id: success
  doc: SUCCESS
  type: string
  inputBinding:
    position: 0
- id: anything_but_zero
  doc: FAILURE/ERROR
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cromshell

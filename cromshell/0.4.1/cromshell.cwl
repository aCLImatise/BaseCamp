class: CommandLineTool
id: cromshell.cwl
inputs:
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
- id: anything_but_zero
  doc: FAILURE/ERROR
  type: string
  inputBinding:
    position: 0
- id: t
  doc: Set the curl connect timeout to TIMEOUT seconds. Also sets the curl max timeout
    to 2*TIMEOUT seconds. TIMEOUT must be an integer.
  type: string
  inputBinding:
    prefix: -t
- id: w
  doc: Wait for workflow to transition from 'Submitted' to some other status before
    cromshell exits
  type: boolean
  inputBinding:
    prefix: -w
- id: p
  doc: Enable pretty-printing.
  type: boolean
  inputBinding:
    prefix: -p
- id: x
  doc: Expand sub-workflow information.
  type: boolean
  inputBinding:
    prefix: -x
- id: c
  doc: Color the output by completion status.
  type: boolean
  inputBinding:
    prefix: -c
- id: u
  doc: Check completion status of all unfinished jobs.
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: If provided, will only remove jobs with the given STATUS from the local list.
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cromshell

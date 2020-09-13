class: CommandLineTool
id: ../../../wes_client.cwl
inputs:
- id: in_host
  doc: "Example: '--host=localhost:8080'. Defaults to"
  type: long
  inputBinding:
    prefix: --host
- id: in_proto
  doc: "Options: [http, https]. Defaults to WES_API_PROTO\n(https)."
  type: string
  inputBinding:
    prefix: --proto
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: in_attachments
  doc: "A comma separated list of attachments to include.\nExample: --attachments=\"\
    testdata/dockstore-tool-\nmd5sum.cwl,testdata/md5sum.input\""
  type: long
  inputBinding:
    prefix: --attachments
- id: in_page
  doc: ''
  type: string
  inputBinding:
    prefix: --page
- id: in_page_size
  doc: ''
  type: long
  inputBinding:
    prefix: --page-size
- id: in_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --run
- id: in_get
  doc: "Specify a <workflow-id>. Example: '--get=<workflow-\nid>'"
  type: string
  inputBinding:
    prefix: --get
- id: in_log
  doc: "Specify a <workflow-id>. Example: '--log=<workflow-\nid>'"
  type: string
  inputBinding:
    prefix: --log
- id: in_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_wait
  doc: ''
  type: boolean
  inputBinding:
    prefix: --wait
- id: in_no_wait
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-wait
- id: in_auth
  doc: ''
  type: string
  inputBinding:
    prefix: --auth
- id: in_workflow_url
  doc: job_order
  type: string
  inputBinding:
    position: 0
- id: in_wes_api_host_dot
  doc: --auth AUTH           Defaults to WES_API_AUTH.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wes-client

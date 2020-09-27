class: CommandLineTool
id: hubward_upload.cwl
inputs:
- id: in_hub_only
  doc: been specified, only these files will be uploaded to the
  type: string
  inputBinding:
    prefix: --hub-only
- id: in_rsync_options
  doc: Options for rsync. Default is "'-avrL --progress'"
  type: string
  inputBinding:
    prefix: --rsync_options
- id: in_host
  doc: "Host to upload to. Overrides [server][host] in the\ngroup config file. (default:\
    \ -)"
  type: File
  inputBinding:
    prefix: --host
- id: in_user
  doc: "User for host. Overrides [server][user] in the group\nconfig file. (default:\
    \ -)"
  type: File
  inputBinding:
    prefix: --user
- id: in_hub_remote
  doc: "Remote filename for the top-level hub file. Overrides\n[server][hub_remote]\
    \ in the config file. (default: -)\n"
  type: File
  inputBinding:
    prefix: --hub_remote
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hubward
- upload

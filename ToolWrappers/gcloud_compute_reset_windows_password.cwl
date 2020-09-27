class: CommandLineTool
id: gcloud_compute_reset_windows_password.cwl
inputs:
- id: in_user
  doc: "USER specifies the username to get the password for. If omitted, the\nusername\
    \ is derived from your authenticated account email address."
  type: string
  inputBinding:
    prefix: --user
- id: in_zone
  doc: "The zone of the instance to operate on. If not specified, you may be\nprompted\
    \ to select a zone. gcloud will attempt to identify the zone by\nsearching for\
    \ resources in your project. If the zone cannot be\ndetermined, you will then\
    \ be prompted with all Google Cloud Platform\nzones.\nTo avoid prompting when\
    \ this flag is omitted, you can set the\ncompute/zone property:\n$ gcloud config\
    \ set compute/zone ZONE\nA list of zones can be fetched by running:\n$ gcloud\
    \ compute zones list\nTo unset the property, run:\n$ gcloud config unset compute/zone\n\
    Alternatively, the zone can be stored in the environment variable\nCLOUDSDK_COMPUTE_ZONE."
  type: string
  inputBinding:
    prefix: --zone
- id: in_instance_name
  doc: The name of the instance to operate on.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- reset-windows-password

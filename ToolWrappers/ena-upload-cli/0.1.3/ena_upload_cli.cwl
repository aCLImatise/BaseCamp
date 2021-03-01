class: CommandLineTool
id: ena_upload_cli.cwl
inputs:
- id: in_action
  doc: "add: add an object to the archive\nmodify: modify an object in the archive\n\
    cancel: cancel a private object and its dependent objects\nrelease: release a\
    \ private object immediately to public"
  type: string?
  inputBinding:
    prefix: --action
- id: in_study
  doc: table of STUDY object
  type: string?
  inputBinding:
    prefix: --study
- id: in_sample
  doc: table of SAMPLE object
  type: string?
  inputBinding:
    prefix: --sample
- id: in_experiment
  doc: table of EXPERIMENT object
  type: string?
  inputBinding:
    prefix: --experiment
- id: in_run
  doc: table of RUN object
  type: string?
  inputBinding:
    prefix: --run
- id: in_data
  doc: "[FILE [FILE ...]]\ndata for submission"
  type: boolean?
  inputBinding:
    prefix: --data
- id: in_center
  doc: specific to your Webin account
  type: string?
  inputBinding:
    prefix: --center
- id: in_web_in_id
  doc: the usermane of your Webin account
  type: string?
  inputBinding:
    prefix: --webin_id
- id: in_password
  doc: the password of your Webin account
  type: string?
  inputBinding:
    prefix: --password
- id: in_secret
  doc: .secret file containing the password of your Webin
  type: File?
  inputBinding:
    prefix: --secret
- id: in_account
  doc: -d, --dev             Flag to use the dev/sandbox endpoint of ENA.
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
- ena-upload-cli

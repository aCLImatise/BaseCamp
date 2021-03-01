class: CommandLineTool
id: gcloud_auth_activate_service_account.cwl
inputs:
- id: in_key_file
  doc: Path to the private key file.
  type: File?
  inputBinding:
    prefix: --key-file
- id: in_password_file
  doc: "Path to a file containing the password for the service account private\nkey\
    \ (only for a .p12 file)."
  type: File?
  inputBinding:
    prefix: --password-file
- id: in_prompt_for_password
  doc: "Prompt for the password for the service account private key (only for a\n\
    .p12 file)."
  type: boolean?
  inputBinding:
    prefix: --prompt-for-password
- id: in_g_cloud_dot
  doc: "The key file for this command can be obtained using either:\no the Cloud Platform\
    \ console (https://console.cloud.google.com) or\no $ gcloud iam service-accounts\
    \ keys create."
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
- gcloud
- auth
- activate-service-account

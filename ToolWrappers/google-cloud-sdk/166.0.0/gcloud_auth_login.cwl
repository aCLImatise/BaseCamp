class: CommandLineTool
id: gcloud_auth_login.cwl
inputs:
- id: in_activate
  doc: "Set the new account to active. Enabled by default, use --no-activate to\n\
    disable."
  type: boolean
  inputBinding:
    prefix: --activate
- id: in_brief
  doc: Minimal user output.
  type: boolean
  inputBinding:
    prefix: --brief
- id: in_enable_g_drive_access
  doc: Enable Google Drive access.
  type: boolean
  inputBinding:
    prefix: --enable-gdrive-access
- id: in_force
  doc: "Re-run the web authorization flow even if the given account has valid\ncredentials."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_launch_browser
  doc: "Launch a browser for authorization. If not enabled or DISPLAY variable\nis\
    \ not set, prints a URL to standard output to be copied. Enabled by\ndefault,\
    \ use --no-launch-browser to disable."
  type: boolean
  inputBinding:
    prefix: --launch-browser
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- auth
- login

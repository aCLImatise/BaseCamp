class: CommandLineTool
id: solvebio.cwl
inputs:
- id: in_api_host
  doc: Override the default SolveBio API host
  type: string?
  inputBinding:
    prefix: --api-host
- id: in_api_key
  doc: Manually provide a SolveBio API key
  type: string?
  inputBinding:
    prefix: --api-key
- id: in_access_token
  doc: Manually provide a SolveBio OAuth2 access token
  type: long?
  inputBinding:
    prefix: --access-token
- id: in_login
  doc: Login and save credentials
  type: string
  inputBinding:
    position: 0
- id: in_logout
  doc: Logout and delete saved credentials
  type: string
  inputBinding:
    position: 1
- id: in_whoami
  doc: Show your SolveBio email address
  type: string
  inputBinding:
    position: 2
- id: in_tutorial
  doc: Show the SolveBio Python Tutorial
  type: string
  inputBinding:
    position: 3
- id: in_shell
  doc: Open the SolveBio Python shell
  type: string
  inputBinding:
    position: 4
- id: in_import
  doc: Import a local file into a SolveBio dataset
  type: string
  inputBinding:
    position: 5
- id: in_create_dataset
  doc: Create a SolveBio dataset
  type: string
  inputBinding:
    position: 6
- id: in_upload
  doc: Upload a file or directory to a SolveBio Vault
  type: string
  inputBinding:
    position: 7
- id: in_download
  doc: Download one or more files from a SolveBio Vault.
  type: string
  inputBinding:
    position: 8
- id: in_tag
  doc: Apply tags or remove tags on objects
  type: string
  inputBinding:
    position: 9
- id: in_queue
  doc: Shows the current job queue, grouped by User
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/solvebio:2.16.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- solvebio

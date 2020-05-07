class: CommandLineTool
id: solvebio.cwl
inputs:
- id: login
  doc: Login and save credentials
  type: string
  inputBinding:
    position: 0
- id: logout
  doc: Logout and delete saved credentials
  type: string
  inputBinding:
    position: 1
- id: whoami
  doc: Show your SolveBio email address
  type: string
  inputBinding:
    position: 2
- id: tutorial
  doc: Show the SolveBio Python Tutorial
  type: string
  inputBinding:
    position: 3
- id: shell
  doc: Open the SolveBio Python shell
  type: string
  inputBinding:
    position: 4
- id: import
  doc: Import a local file into a SolveBio dataset
  type: string
  inputBinding:
    position: 5
- id: create_dataset
  doc: Create a SolveBio dataset
  type: string
  inputBinding:
    position: 6
- id: upload
  doc: Upload a file or directory to a SolveBio Vault
  type: string
  inputBinding:
    position: 7
- id: download
  doc: Download one or more files from a SolveBio Vault.
  type: string
  inputBinding:
    position: 8
- id: tag
  doc: Apply tags or remove tags on objects
  type: string
  inputBinding:
    position: 9
- id: queue
  doc: Shows the current job queue, grouped by User
  type: string
  inputBinding:
    position: 10
- id: api_host
  doc: Override the default SolveBio API host
  type: string
  inputBinding:
    prefix: --api-host
- id: api_key
  doc: Manually provide a SolveBio API key
  type: string
  inputBinding:
    prefix: --api-key
- id: access_token
  doc: Manually provide a SolveBio OAuth2 access token
  type: string
  inputBinding:
    prefix: --access-token
outputs: []
cwlVersion: v1.1
baseCommand:
- solvebio

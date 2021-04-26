class: CommandLineTool
id: synapse_sync.cwl
inputs:
- id: in_dry_run
  doc: Perform validation without uploading.
  type: boolean?
  inputBinding:
    prefix: --dryRun
- id: in_send_messages
  doc: "Send notifications via Synapse messaging (email) at specific\nintervals, on\
    \ errors and on completion."
  type: boolean?
  inputBinding:
    prefix: --sendMessages
- id: in_retries
  doc: ''
  type: long?
  inputBinding:
    prefix: --retries
- id: in_file
  doc: A tsv file with file locations and metadata to be pushed to
  type: File
  inputBinding:
    position: 0
- id: in_synapse_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- synapse
- sync

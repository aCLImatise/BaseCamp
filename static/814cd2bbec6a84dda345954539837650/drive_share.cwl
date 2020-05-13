class: CommandLineTool
id: drive_share.cwl
inputs:
- id: id
  doc: share by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: message
  doc: message to send receipients
  type: string
  inputBinding:
    prefix: -message
- id: no_prompt
  doc: disables the prompt
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: notify
  doc: toggle whether to notify receipients about share (default true)
  type: boolean
  inputBinding:
    prefix: -notify
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: role
  doc: 'role to set to receipients of share. Possible values:  * owner. * reader.
    * writer. * commenter.'
  type: string
  inputBinding:
    prefix: -role
- id: type
  doc: 'scope of accounts to share files with. Possible values:  * anyone. * user.
    * domain. * group'
  type: string
  inputBinding:
    prefix: -type
- id: verbose
  doc: show step by step information verbosely (default true)
  type: boolean
  inputBinding:
    prefix: -verbose
- id: with_link
  doc: turn off file indexing so that only those with the link can view it
  type: boolean
  inputBinding:
    prefix: -with-link
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- share

class: CommandLineTool
id: drive_unshare.cwl
inputs:
- id: id
  doc: unshare by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: no_prompt
  doc: disables the prompt
  type: boolean
  inputBinding:
    prefix: -no-prompt
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
  doc: scope of account to revoke access to
  type: string
  inputBinding:
    prefix: -type
- id: verbose
  doc: show step by step information verbosely (default true)
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- unshare

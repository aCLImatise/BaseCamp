class: CommandLineTool
id: drive_share.cwl
inputs:
- id: in_emails
  doc: emails to share the file to
  type: File?
  inputBinding:
    prefix: -emails
- id: in_message
  doc: message to send receipients
  type: string?
  inputBinding:
    prefix: -message
- id: in_no_prompt
  doc: disables the prompt
  type: boolean?
  inputBinding:
    prefix: -no-prompt
- id: in_notify
  doc: toggle whether to notify receipients about share (default true)
  type: boolean?
  inputBinding:
    prefix: -notify
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_role
  doc: "role to set to receipients of share. Possible values:\n* owner.\n* reader.\n\
    * writer.\n* commenter."
  type: string?
  inputBinding:
    prefix: -role
- id: in_type
  doc: "scope of accounts to share files with. Possible values:\n* anyone.\n* user.\n\
    * domain.\n* group"
  type: string?
  inputBinding:
    prefix: -type
- id: in_verbose
  doc: show step by step information verbosely (default true)
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_with_link
  doc: "turn off file indexing so that only those with the link can view it\n"
  type: boolean?
  inputBinding:
    prefix: -with-link
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- share

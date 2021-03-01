class: CommandLineTool
id: drive_unshare.cwl
inputs:
- id: in_emails
  doc: emails to share the file to
  type: File?
  inputBinding:
    prefix: -emails
- id: in_no_prompt
  doc: disables the prompt
  type: boolean?
  inputBinding:
    prefix: -no-prompt
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
  doc: scope of account to revoke access to
  type: string?
  inputBinding:
    prefix: -type
- id: in_verbose
  doc: "show step by step information verbosely (default true)\n"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- unshare

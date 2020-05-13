class: CommandLineTool
id: omero_user_list.cwl
inputs:
- id: omer_o_userdir
  doc: "Set the base directory containing the user's files. Default: $HOME/omero"
  type: string
  inputBinding:
    position: 0
- id: omer_o_session_dir
  doc: 'Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions'
  type: string
  inputBinding:
    position: 1
- id: omer_o_tmpdir
  doc: 'Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp'
  type: string
  inputBinding:
    position: 2
- id: omer_o_password
  doc: Set the user's password for creating new sessions. Ignored if -w or --password
    is used.
  type: string
  inputBinding:
    position: 3
- id: style
  doc: use alternative output style (default=sql)
  type: string
  inputBinding:
    prefix: --style
- id: long
  doc: Print comma-separated list of all groups (default)
  type: boolean
  inputBinding:
    prefix: --long
- id: count
  doc: Print count of all groups
  type: boolean
  inputBinding:
    prefix: --count
- id: sort_by_id
  doc: Sort users by ID (default)
  type: boolean
  inputBinding:
    prefix: --sort-by-id
- id: sort_by_login
  doc: Sort users by login
  type: boolean
  inputBinding:
    prefix: --sort-by-login
- id: sort_by_first_name
  doc: Sort users by first name
  type: boolean
  inputBinding:
    prefix: --sort-by-first-name
- id: sort_by_last_name
  doc: Sort users by last name
  type: boolean
  inputBinding:
    prefix: --sort-by-last-name
- id: sort_by_email
  doc: Sort users by email
  type: boolean
  inputBinding:
    prefix: --sort-by-email
- id: create
  doc: Create a new session regardless of existing ones
  type: boolean
  inputBinding:
    prefix: --create
- id: server
  doc: OMERO server hostname
  type: string
  inputBinding:
    prefix: --server
- id: port
  doc: OMERO server port
  type: string
  inputBinding:
    prefix: --port
- id: group
  doc: OMERO server default group
  type: string
  inputBinding:
    prefix: --group
- id: user
  doc: OMERO username
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: OMERO password
  type: string
  inputBinding:
    prefix: --password
- id: key
  doc: OMERO session key (UUID of an active session)
  type: string
  inputBinding:
    prefix: --key
- id: sudo
  doc: Create session as this admin. Changes meaning of password!
  type: string
  inputBinding:
    prefix: --sudo
- id: quiet
  doc: Quiet mode. Causes most warning and diagnostic messages to be suppressed.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- user
- list

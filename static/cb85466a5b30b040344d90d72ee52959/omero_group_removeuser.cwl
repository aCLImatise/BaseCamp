class: CommandLineTool
id: ../../../omero_group_removeuser.cwl
inputs:
- id: id
  doc: ID of the group
  type: string
  inputBinding:
    prefix: --id
- id: name
  doc: Name of the group
  type: string
  inputBinding:
    prefix: --name
- id: user_id
  doc: ID of the user(s) to remove from the group
  type: string[]
  inputBinding:
    prefix: --user-id
- id: user_name
  doc: Name of the user(s) to remove from the group
  type: string[]
  inputBinding:
    prefix: --user-name
- id: as_owner
  doc: Remove the users from the group owner list
  type: boolean
  inputBinding:
    prefix: --as-owner
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
- id: omero_username
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
- id: id_name_users
  doc: ID or name of the user(s) to remove from the group
  type: string
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- group
- removeuser

class: CommandLineTool
id: omero_group_copyusers.cwl
inputs:
- id: from_group
  doc: ID or name of the source group whose users will be copied
  type: string
  inputBinding:
    position: 0
- id: to_group
  doc: ID or name of the target group which will have new users added
  type: string
  inputBinding:
    position: 1
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
- id: as_owner
  doc: Copy the group owners only
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
- group
- copyusers

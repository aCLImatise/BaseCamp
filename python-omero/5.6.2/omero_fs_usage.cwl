class: CommandLineTool
id: omero_fs_usage.cwl
inputs:
- id: obj
  doc: "Objects to be queried in the form '<Class>:<Id>[,<Id> ...]', or '<Class>:*'\
    \ to query all the objects of the given type "
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
- id: reverse
  doc: Reverse sort order
  type: boolean
  inputBinding:
    prefix: --reverse
- id: units
  doc: Units to use for disk usage
  type: string
  inputBinding:
    prefix: --units
- id: human_readable
  doc: Use most appropriate units
  type: boolean
  inputBinding:
    prefix: --human-readable
- id: groups
  doc: Print size for all current user's groups
  type: boolean
  inputBinding:
    prefix: --groups
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
- fs
- usage

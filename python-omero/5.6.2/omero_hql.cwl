class: CommandLineTool
id: ../../../omero_hql.cwl
inputs:
- id: admin
  doc: Run an admin query (deprecated; use 'all')
  type: boolean
  inputBinding:
    prefix: --admin
- id: all
  doc: Perform query on all groups
  type: boolean
  inputBinding:
    prefix: --all
- id: ids_only
  doc: Show only the ids of returned objects
  type: boolean
  inputBinding:
    prefix: --ids-only
- id: limit
  doc: maximum number of return values (default=25)
  type: string
  inputBinding:
    prefix: --limit
- id: offset
  doc: number of entries to skip (default=0)
  type: string
  inputBinding:
    prefix: --offset
- id: style
  doc: use alternative output style (default=sql)
  type: string
  inputBinding:
    prefix: --style
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
- id: query
  doc: Single query to run
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
- hql

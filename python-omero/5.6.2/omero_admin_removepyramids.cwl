class: CommandLineTool
id: omero_admin_removepyramids.cwl
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
- id: dry_run
  doc: Print out which files would be deleted
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: endian
  doc: Delete pyramid with given endianness. If not specified, all will be removed.
  type: string
  inputBinding:
    prefix: --endian
- id: imported_after
  doc: Delete pyramid imported after a given date. Expected format YYYY-mm-dd
  type: string
  inputBinding:
    prefix: --imported-after
- id: limit
  doc: Set the limit of pyramids to remove in one call. Values greater than 500 (default)
    are not supported
  type: long
  inputBinding:
    prefix: --limit
- id: wait
  doc: Number of seconds to wait for the processing to complete (Indefinite < 0; No
    wait=0).
  type: string
  inputBinding:
    prefix: --wait
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
- admin
- removepyramids

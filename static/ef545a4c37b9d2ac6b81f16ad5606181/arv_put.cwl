class: CommandLineTool
id: arv_put.cwl
inputs:
- id: path
  doc: "Local file or directory. If path is a directory reference with a trailing\
    \ slash, then just upload the directory's contents; otherwise upload the directory\
    \ itself. Default: read from standard input."
  type: File
  inputBinding:
    position: 0
- id: trash_after
  doc: Set the trash date of the resulting collection to an amount of days from the
    date/time that the upload process finishes.
  type: string
  inputBinding:
    prefix: --trash-after
- id: project_uuid
  doc: Store the collection in the specified project, instead of your Home project.
  type: string
  inputBinding:
    prefix: --project-uuid
- id: name
  doc: Save the collection with the specified name.
  type: string
  inputBinding:
    prefix: --name
- id: progress
  doc: Display human-readable progress on stderr (bytes and, if possible, percentage
    of total data size). This is the default behavior when stderr is a tty.
  type: boolean
  inputBinding:
    prefix: --progress
- id: no_progress
  doc: Do not display human-readable progress on stderr, even if stderr is a tty.
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: batch_progress
  doc: Display machine-readable progress on stderr (bytes and, if known, total data
    size).
  type: boolean
  inputBinding:
    prefix: --batch-progress
- id: silent
  doc: Do not print any debug messages to console. (Any error messages will still
    be displayed.)
  type: boolean
  inputBinding:
    prefix: --silent
- id: resume
  doc: Continue interrupted uploads from cached state (default).
  type: boolean
  inputBinding:
    prefix: --resume
- id: no_resume
  doc: Do not continue interrupted uploads from cached state.
  type: boolean
  inputBinding:
    prefix: --no-resume
- id: cache
  doc: Save upload state in a cache file for resuming (default).
  type: boolean
  inputBinding:
    prefix: --cache
- id: no_cache
  doc: Do not save upload state in a cache file for resuming.
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: retries
  doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  type: string
  inputBinding:
    prefix: --retries
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-put

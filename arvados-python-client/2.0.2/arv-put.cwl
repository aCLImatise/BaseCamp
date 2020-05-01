#!/usr/bin/env cwl-runner

baseCommand:
- arv-put
class: CommandLineTool
cwlVersion: v1.0
id: arv-put
inputs:
- doc: "Local file or directory. If path is a directory reference with a trailing\
    \ slash, then just upload the directory's contents; otherwise upload the directory\
    \ itself. Default: read from standard input."
  id: path
  inputBinding:
    position: 0
  type: File
- doc: Set the trash date of the resulting collection to an amount of days from the
    date/time that the upload process finishes.
  id: trash_after
  inputBinding:
    prefix: --trash-after
  type: string
- doc: Store the collection in the specified project, instead of your Home project.
  id: project_uuid
  inputBinding:
    prefix: --project-uuid
  type: string
- doc: Save the collection with the specified name.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Display human-readable progress on stderr (bytes and, if possible, percentage
    of total data size). This is the default behavior when stderr is a tty.
  id: progress
  inputBinding:
    prefix: --progress
  type: boolean
- doc: Do not display human-readable progress on stderr, even if stderr is a tty.
  id: no_progress
  inputBinding:
    prefix: --no-progress
  type: boolean
- doc: Display machine-readable progress on stderr (bytes and, if known, total data
    size).
  id: batch_progress
  inputBinding:
    prefix: --batch-progress
  type: boolean
- doc: Do not print any debug messages to console. (Any error messages will still
    be displayed.)
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: Continue interrupted uploads from cached state (default).
  id: resume
  inputBinding:
    prefix: --resume
  type: boolean
- doc: Do not continue interrupted uploads from cached state.
  id: no_resume
  inputBinding:
    prefix: --no-resume
  type: boolean
- doc: Save upload state in a cache file for resuming (default).
  id: cache
  inputBinding:
    prefix: --cache
  type: boolean
- doc: Do not save upload state in a cache file for resuming.
  id: no_cache
  inputBinding:
    prefix: --no-cache
  type: boolean
- doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  id: retries
  inputBinding:
    prefix: --retries
  type: string

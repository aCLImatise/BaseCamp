class: CommandLineTool
id: arv_keepdocker.cwl
inputs:
- id: image
  doc: 'Docker image to upload: repo, repo:tag, or hash'
  type: string
  inputBinding:
    position: 0
- id: tag
  doc: Tag of the Docker image to upload (default 'latest'), if image is given as
    an untagged repo name
  type: string
  inputBinding:
    position: 1
- id: force
  doc: Re-upload the image even if it already exists on the server
  type: boolean
  inputBinding:
    prefix: --force
- id: force_image_format
  doc: Proceed even if the image format is not supported by the server
  type: boolean
  inputBinding:
    prefix: --force-image-format
- id: pull
  doc: Try to pull the latest image from Docker registry
  type: boolean
  inputBinding:
    prefix: --pull
- id: no_pull
  doc: Use locally installed image only, don't pull image from Docker registry (default)
  type: boolean
  inputBinding:
    prefix: --no-pull
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
- arv-keepdocker

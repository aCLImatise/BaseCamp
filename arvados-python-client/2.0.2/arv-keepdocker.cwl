#!/usr/bin/env cwl-runner

baseCommand:
- arv-keepdocker
class: CommandLineTool
cwlVersion: v1.0
id: arv-keepdocker
inputs:
- doc: 'Docker image to upload: repo, repo:tag, or hash'
  id: image
  inputBinding:
    position: 0
  type: string
- doc: Tag of the Docker image to upload (default 'latest'), if image is given as
    an untagged repo name
  id: tag
  inputBinding:
    position: 1
  type: string
- doc: Re-upload the image even if it already exists on the server
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Proceed even if the image format is not supported by the server
  id: force_image_format
  inputBinding:
    prefix: --force-image-format
  type: boolean
- doc: Try to pull the latest image from Docker registry
  id: pull
  inputBinding:
    prefix: --pull
  type: boolean
- doc: Use locally installed image only, don't pull image from Docker registry (default)
  id: no_pull
  inputBinding:
    prefix: --no-pull
  type: boolean
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

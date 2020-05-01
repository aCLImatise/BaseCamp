#!/usr/bin/env cwl-runner

baseCommand:
- arv-copy
class: CommandLineTool
cwlVersion: v1.0
id: arv-copy
inputs:
- doc: The UUID of the object to be copied.
  id: object_uuid
  inputBinding:
    position: 0
  type: string
- doc: Verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Report progress on copying collections. (default)
  id: progress
  inputBinding:
    prefix: --progress
  type: boolean
- doc: Do not report progress on copying collections.
  id: no_progress
  inputBinding:
    prefix: --no-progress
  type: boolean
- doc: Perform copy even if the object appears to exist at the remote destination.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: The name of the source Arvados instance (required) - points at an Arvados config
    file. May be either a pathname to a config file, or (for example) "foo" as shorthand
    for $HOME/.config/arvados/foo.conf.
  id: src
  inputBinding:
    prefix: --src
  type: string
- doc: The name of the destination Arvados instance (required) - points at an Arvados
    config file. May be either a pathname to a config file, or (for example) "foo"
    as shorthand for $HOME/.config/arvados/foo.conf.
  id: dst
  inputBinding:
    prefix: --dst
  type: string
- doc: Recursively copy any dependencies for this object. (default)
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: 'Do not copy any dependencies. NOTE: if this option is given, the copied object
    will need to be updated manually in order to be functional.'
  id: no_recursive
  inputBinding:
    prefix: --no-recursive
  type: boolean
- doc: The UUID of the project at the destination to which the collection or workflow
    should be copied.
  id: project_uuid
  inputBinding:
    prefix: --project-uuid
  type: string
- doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  id: retries
  inputBinding:
    prefix: --retries
  type: string

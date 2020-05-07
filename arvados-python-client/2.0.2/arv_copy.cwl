class: CommandLineTool
id: arv_copy.cwl
inputs:
- id: object_uuid
  doc: The UUID of the object to be copied.
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: progress
  doc: Report progress on copying collections. (default)
  type: boolean
  inputBinding:
    prefix: --progress
- id: no_progress
  doc: Do not report progress on copying collections.
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: force
  doc: Perform copy even if the object appears to exist at the remote destination.
  type: boolean
  inputBinding:
    prefix: --force
- id: src
  doc: The name of the source Arvados instance (required) - points at an Arvados config
    file. May be either a pathname to a config file, or (for example) "foo" as shorthand
    for $HOME/.config/arvados/foo.conf.
  type: string
  inputBinding:
    prefix: --src
- id: dst
  doc: The name of the destination Arvados instance (required) - points at an Arvados
    config file. May be either a pathname to a config file, or (for example) "foo"
    as shorthand for $HOME/.config/arvados/foo.conf.
  type: string
  inputBinding:
    prefix: --dst
- id: recursive
  doc: Recursively copy any dependencies for this object. (default)
  type: boolean
  inputBinding:
    prefix: --recursive
- id: no_recursive
  doc: 'Do not copy any dependencies. NOTE: if this option is given, the copied object
    will need to be updated manually in order to be functional.'
  type: boolean
  inputBinding:
    prefix: --no-recursive
- id: project_uuid
  doc: The UUID of the project at the destination to which the collection or workflow
    should be copied.
  type: string
  inputBinding:
    prefix: --project-uuid
- id: retries
  doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  type: string
  inputBinding:
    prefix: --retries
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-copy

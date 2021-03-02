class: CommandLineTool
id: arv_copy.cwl
inputs:
- id: in_verbose
  doc: Verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_progress
  doc: Report progress on copying collections. (default)
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_no_progress
  doc: Do not report progress on copying collections.
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_force
  doc: "Perform copy even if the object appears to exist at\nthe remote destination."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_src
  doc: "The name of the source Arvados instance (required) -\npoints at an Arvados\
    \ config file. May be either a\npathname to a config file, or (for example) \"\
    foo\" as\nshorthand for $HOME/.config/arvados/foo.conf."
  type: File?
  inputBinding:
    prefix: --src
- id: in_dst
  doc: "The name of the destination Arvados instance\n(required) - points at an Arvados\
    \ config file. May be\neither a pathname to a config file, or (for example)\n\"\
    foo\" as shorthand for $HOME/.config/arvados/foo.conf."
  type: File?
  inputBinding:
    prefix: --dst
- id: in_recursive
  doc: "Recursively copy any dependencies for this object, and\nsubprojects. (default)"
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_no_recursive
  doc: Do not copy any dependencies or subprojects.
  type: boolean?
  inputBinding:
    prefix: --no-recursive
- id: in_project_uuid
  doc: "The UUID of the project at the destination to which\nthe collection or workflow\
    \ should be copied."
  type: string?
  inputBinding:
    prefix: --project-uuid
- id: in_retries
  doc: "Maximum number of times to retry server requests that\nencounter temporary\
    \ failures (e.g., server down).\nDefault 3.\n"
  type: long?
  inputBinding:
    prefix: --retries
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.1--py_0
cwlVersion: v1.1
baseCommand:
- arv-copy
